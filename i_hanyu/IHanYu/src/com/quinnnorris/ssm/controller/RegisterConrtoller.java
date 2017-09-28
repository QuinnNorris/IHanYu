package com.quinnnorris.ssm.controller;

import com.quinnnorris.ssm.bean.*;
import com.quinnnorris.ssm.service.impl.RegisterServiceImpl;
import com.quinnnorris.ssm.util.BaseJson;
import com.quinnnorris.ssm.util.HeadPService;
import com.quinnnorris.ssm.util.SessionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Title: LogRegConrtoller
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/13 下午2:31 星期三
 * @author: quinn_norris
 * @version: 1.0
 */
@Controller
public class RegisterConrtoller {


    @Autowired
    private RegisterServiceImpl registerServiceImpl;


    @RequestMapping("/toSignUp")
    public String toSignUp() {
        return "signUp";
    }

    @RequestMapping("/teacher_register")
    public String registerUser(HttpSession httpSession) {
        SessionService.initSession(httpSession);
        Map<String, String> inReg = new HashMap<>();
        inReg.put("usertype", "1");
        httpSession.setAttribute("inReg", inReg);
        return "teacher1";
    }

    @RequestMapping(value = "/teacher_register_name", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson registerUserName(@RequestParam String firstName, @RequestParam String secondName,
                                     @RequestParam String sex, @RequestParam String teachingStyle,
                                     @RequestParam String teachingExperience, @RequestParam("imgFile") MultipartFile file,
                                     HttpSession httpSession) {
        Map<String, String> inReg = (Map<String, String>) httpSession.getAttribute("inReg");
        String fileStr = HeadPService.insertHeadp(file);
        inReg.put("headp", fileStr);
        inReg.put("firstname", firstName);
        inReg.put("lastname", secondName);
        inReg.put("sex", sex);
        inReg.put("style", teachingStyle);
        inReg.put("experience", teachingExperience);
        httpSession.setAttribute("inReg", inReg);
        BaseJson baseJson = new BaseJson();
        baseJson.setErrorCode("true");
        return baseJson;
    }

    @RequestMapping(value = "/teacher_register_chare", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson registerChare(@RequestParam String location, @RequestParam String wechat,
                                  @RequestParam String weekday, @RequestParam String goodat,
                                  @RequestParam String coordinate, @RequestParam String payment, HttpSession httpSession) {
        Map<String, String> inReg = (Map<String, String>) httpSession.getAttribute("inReg");

        //更新user表信息
        String[] loc = coordinate.split(" ");
        UserCustom userCustom = new UserCustom();
        userCustom.setPassword(inReg.get("pw"));
        userCustom.setEmail(inReg.get("email"));
        userCustom.setRegtime(new Date());
        userCustom.setUsertype(1);
        userCustom.setHeadp(inReg.get("headp"));
        userCustom.setLati(Double.parseDouble(loc[1]));
        userCustom.setLongi(Double.parseDouble(loc[0]));
        BaseJson baseJson = registerServiceImpl.insertUserFromReg(userCustom);

        //更新teacher表信息
        TeacherCustom teacherCustom = new TeacherCustom();
        teacherCustom.setFirstname(inReg.get("firstname"));
        teacherCustom.setLastname(inReg.get("lastname"));
        teacherCustom.setSex(inReg.get("sex"));
        teacherCustom.setStyle(inReg.get("style"));
        teacherCustom.setExperience(inReg.get("experience"));
        teacherCustom.setLocation(location);
        teacherCustom.setPayment(Integer.parseInt(payment));
        teacherCustom.setWechat(wechat);
        teacherCustom.setId((Integer) baseJson.getObject());
        BaseJson baseJson1 = registerServiceImpl.insertTeacherFromReg(teacherCustom);

        //更新tea_good表信息
        String[] goodAt = goodat.split(" ");
        Tea_goodCustom tea_goodCustom = new Tea_goodCustom();
        tea_goodCustom.setId((Integer) baseJson.getObject());
        BaseJson baseJson2 = registerServiceImpl.insertTeaGoodFromReg(goodAt, tea_goodCustom);

        //更新tea_time表信息
        String[] time = weekday.split(" ");
        Tea_timeCustom tea_timeCustom = new Tea_timeCustom();
        tea_timeCustom.setId((Integer) baseJson.getObject());
        BaseJson baseJson3 = registerServiceImpl.insertTeaTimeFromReg(time, tea_timeCustom);

        httpSession.setAttribute("email", inReg.get("email"));
        httpSession.setAttribute("username", inReg.get("firstname") + inReg.get("lastname"));
        httpSession.setAttribute("headp", inReg.get("headp"));
        httpSession.setAttribute("usertype","1");
        baseJson.setObject(inReg.get("email"));
        return baseJson;
    }

    @RequestMapping("/teacher_register2")
    public String registerUser2() {
        return "teacher2";
    }

    @RequestMapping("/teacher_register3")
    public String registerUser3() {
        return "teacher3";
    }

    @RequestMapping(value = "/emailCheck", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson emailCheck(@RequestParam String email, @RequestParam String pw, HttpSession httpSession) {
        UserCustom userCustom = new UserCustom();
        userCustom.setEmail(email);
        userCustom.setPassword(pw);
        BaseJson baseJson = registerServiceImpl.findUserByEmail(userCustom);
        Map<String, String> inReg = (Map<String, String>) httpSession.getAttribute("inReg");
        if (baseJson.getErrorCode().equals("0001")) {
            inReg.put("email", email);
            inReg.put("pw", pw);
            baseJson.setErrorCode("true");
        } else
            baseJson.setErrorCode("false");
        return baseJson;
    }

    @RequestMapping("/student_register")
    public String studentRegister(HttpSession httpSession) {
        SessionService.initSession(httpSession);
        Map<String, String> inReg = new HashMap<>();
        httpSession.setAttribute("inReg", inReg);
        return "student1";
    }

    @RequestMapping("/student_register2")
    public String registerStudentUser2() {
        return "student2";
    }

    @RequestMapping("/student_register3")
    public String registerStudentUser3() {
        return "student3";
    }

    @RequestMapping(value = "/student_register_name", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson registerStudentUserName(@RequestParam String userName, @RequestParam String location,
                                            @RequestParam String userType, @RequestParam String country,
                                            @RequestParam String wechat, @RequestParam String coordinate,
                                            @RequestParam("imgFile") MultipartFile file, HttpSession httpSession) {
        BaseJson baseJson = new BaseJson();
        Map<String, String> inReg = (Map<String, String>) httpSession.getAttribute("inReg");
        String fileStr = HeadPService.insertHeadp(file);
        inReg.put("userName", userName);
        inReg.put("location", location);
        inReg.put("userType", userType);
        inReg.put("country", country);
        inReg.put("wechat", wechat);
        inReg.put("coordinate", coordinate);
        inReg.put("headp", fileStr);
        httpSession.setAttribute("inReg", inReg);
        if (userType.equals("2"))
            baseJson.setErrorCode("0002");
        else {
            String[] loc = inReg.get("coordinate").split(" ");
            UserCustom userCustom = new UserCustom();
            userCustom.setPassword(inReg.get("pw"));
            userCustom.setEmail(inReg.get("email"));
            userCustom.setRegtime(new Date());
            userCustom.setUsertype(Integer.parseInt(inReg.get("userType")));
            userCustom.setHeadp(fileStr);
            userCustom.setLati(Double.parseDouble(loc[1]));
            userCustom.setLongi(Double.parseDouble(loc[0]));
            BaseJson baseJson2 = registerServiceImpl.insertUserFromReg(userCustom);

            //更新student表信息
            StudentCustom studentCustom = new StudentCustom();
            studentCustom.setId((Integer) baseJson2.getObject());
            studentCustom.setUserName(inReg.get("userName"));
            studentCustom.setCountry_id(Integer.parseInt(inReg.get("country")));
            studentCustom.setWechat(inReg.get("wechat"));
            BaseJson baseJson1 = registerServiceImpl.insertStudentFromReg(studentCustom);
            baseJson.setErrorCode("1003");
            baseJson.setObject(inReg.get("email"));

            httpSession.setAttribute("email", inReg.get("email"));
            httpSession.setAttribute("username", userName);
            httpSession.setAttribute("headp", fileStr);
            httpSession.setAttribute("usertype","3");
        }
        return baseJson;
    }

    @RequestMapping(value = "/student_register_chare", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson registerStudentChare(@RequestParam String university, @RequestParam String sex,
                                         @RequestParam String psex, @RequestParam String firstL,
                                         @RequestParam String secondL, @RequestParam String selfIntro,
                                         @RequestParam String isStudent, HttpSession httpSession) {
        Map<String, String> inReg = (Map<String, String>) httpSession.getAttribute("inReg");

        //更新user表信息
        String[] loc = inReg.get("coordinate").split(" ");
        UserCustom userCustom = new UserCustom();
        userCustom.setPassword(inReg.get("pw"));
        userCustom.setEmail(inReg.get("email"));
        userCustom.setRegtime(new Date());
        userCustom.setUsertype(Integer.parseInt(inReg.get("userType")));
        userCustom.setLati(Double.parseDouble(loc[1]));
        userCustom.setLongi(Double.parseDouble(loc[0]));
        BaseJson baseJson = registerServiceImpl.insertUserFromReg(userCustom);

        //更新student表信息
        StudentCustom studentCustom = new StudentCustom();
        studentCustom.setId((Integer) baseJson.getObject());
        studentCustom.setUserName(inReg.get("userName"));
        studentCustom.setCountry_id(Integer.parseInt(inReg.get("country")));
        studentCustom.setWechat(inReg.get("wechat"));
        BaseJson baseJson1 = registerServiceImpl.insertStudentFromReg(studentCustom);

        //更新partner表信息
        PartnerCustom partnerCustom = new PartnerCustom();
        partnerCustom.setId((Integer) baseJson.getObject());
        partnerCustom.setFirstL_id(Integer.parseInt(firstL));
        partnerCustom.setSecondL_id(Integer.parseInt(secondL));
        partnerCustom.setIsStudent(Integer.parseInt(isStudent));
        partnerCustom.setPsex(psex);
        partnerCustom.setSex(sex);
        partnerCustom.setSelfIntro(selfIntro);
        partnerCustom.setUniversity(university);
        BaseJson baseJson2 = registerServiceImpl.insertPartnerFromReg(partnerCustom);

        httpSession.setAttribute("email", inReg.get("email"));
        httpSession.setAttribute("username", inReg.get("userName"));
        httpSession.setAttribute("headp", inReg.get("headp"));
        httpSession.setAttribute("usertype","2");

        baseJson.setObject(inReg.get("email"));
        return baseJson;
    }

}