package com.quinnnorris.ssm.controller;

import com.quinnnorris.ssm.bean.UserCustom;
import com.quinnnorris.ssm.service.impl.RegisterServiceImpl;
import com.quinnnorris.ssm.util.BaseJson;
import com.quinnnorris.ssm.util.SessionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * Title: LogRegConrtoller
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/13 下午2:31 星期三
 * @author: quinn_norris
 * @version: 1.0
 */
public class LogRegConrtoller {


    @Autowired
    private RegisterServiceImpl registerServiceImpl;

    //@Autowired
    //private LoginServiceImpl loginServiceImpl;

    @RequestMapping("/teacher_register")
    public String registerUser(HttpSession httpSession) {
        SessionService.initSession(httpSession);
        httpSession.setAttribute("usertype","1");
        return "teacher1";
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
