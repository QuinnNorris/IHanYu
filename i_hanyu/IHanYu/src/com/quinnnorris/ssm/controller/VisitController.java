package com.quinnnorris.ssm.controller;

import com.quinnnorris.ssm.bean.*;
import com.quinnnorris.ssm.service.impl.VisitServiceImpl;
import com.quinnnorris.ssm.util.BaseJson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Title: VisitController
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/25 下午5:39 星期一
 * @author: quinn_norris
 * @version: 1.0
 */
@Controller
public class VisitController {

    @Autowired
    VisitServiceImpl visitServiceImpl;

    @RequestMapping("/teacherVisit/{email:.+}")
    public String teacherVisitUser(@PathVariable String email, Model model) {
        UserCustom userCustom = new UserCustom();
        userCustom.setEmail(email);
        BaseJson baseJson = visitServiceImpl.serachUserByEmail(userCustom);
        if (baseJson.getErrorCode().equals("1001"))
            //找不到该用户，应该跳转到404页面
            //等前端做出404页面具体再编写
            return "404";

        TeacherCustom teacherCustom = new TeacherCustom();
        teacherCustom.setId((Integer) baseJson.getObject());
        Tea_goodCustom tea_goodCustom = new Tea_goodCustom();
        tea_goodCustom.setId((Integer) baseJson.getObject());
        Tea_timeCustom tea_timeCustom = new Tea_timeCustom();
        tea_timeCustom.setId((Integer) baseJson.getObject());

        BaseJson baseJson1 = visitServiceImpl.getTeachersMessage(teacherCustom);
        BaseJson baseJson2 = visitServiceImpl.getTeacherGoodAt(tea_goodCustom);
        BaseJson baseJson3 = visitServiceImpl.getTeacherTime(tea_timeCustom);

        Map<String, Object> map = new HashMap<>();
        TeacherCustom custom = (TeacherCustom) baseJson1.getObject();

        map.put("username", custom.getFirstname() + custom.getLastname());
        map.put("wechat", custom.getWechat());
        map.put("payment", custom.getPayment() + "");
        map.put("location", custom.getLocation());
        map.put("style", custom.getStyle());
        map.put("experience", custom.getExperience());
        map.put("good_cn", ((String[]) baseJson2.getObject())[0] + "");
        map.put("good_en", ((String[]) baseJson2.getObject())[1] + "");
        map.put("time_cn", ((String[]) baseJson3.getObject())[0] + "");
        map.put("time_en", ((String[]) baseJson3.getObject())[1] + "");
        model.addAllAttributes(map);

        return "teacherVisit";
    }

}