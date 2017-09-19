package com.quinnnorris.ssm.controller;

import com.quinnnorris.ssm.bean.UserCustom;
import com.quinnnorris.ssm.service.impl.RegisterServiceImpl;
import com.quinnnorris.ssm.util.BaseJson;
import com.quinnnorris.ssm.util.SessionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
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
public class LogRegConrtoller {


    @Autowired
    private RegisterServiceImpl registerServiceImpl;


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
                                     @RequestParam String teachingExperience, HttpSession httpSession) {
        Map<String, String> inReg = (Map<String, String>) httpSession.getAttribute("inReg");
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

    @RequestMapping("/teacher_register2")
    public String registerUser2() {
        return "teacher2";
    }

    @RequestMapping("/teacher_register3")
    public String registerUser3() {
        return "teacher3";
    }

    @RequestMapping(value = "/getLoginState", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson getLoginState(HttpSession httpSession) {
        String email = (String) httpSession.getAttribute("email");
        BaseJson baseJson = new BaseJson();
        if (email != null && email != "")
            baseJson.setErrorCode("true");
        else
            baseJson.setErrorCode("false");
        return baseJson;
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
/*
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson loginUser(@RequestParam String email, @RequestParam String pwd, HttpSession httpSession) {

        UserCustom userCustom = new UserCustom();
        userCustom.setEmail(email);
        userCustom.setPassword(pwd);
        BaseJson baseJson = loginServiceImpl.findUserByEmail(userCustom);
        if (baseJson.getErrorCode().equals("0002")) {
            httpSession.setAttribute("email", userCustom.getEmail());
            httpSession.setAttribute("nickname", baseJson.getObject());
            baseJson.setObject(null);
        }
        return baseJson;
    }
*/

}
