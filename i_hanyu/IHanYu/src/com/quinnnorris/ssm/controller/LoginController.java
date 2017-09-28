package com.quinnnorris.ssm.controller;

import com.quinnnorris.ssm.bean.UserCustom;
import com.quinnnorris.ssm.service.impl.LoginServiceImpl;
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
 * Title: LoginController
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/23 下午2:35 星期六
 * @author: quinn_norris
 * @version: 1.0
 */
@Controller
public class LoginController {

    @Autowired
    private LoginServiceImpl loginServiceImpl;

    @Autowired
    private RegisterServiceImpl registerServiceImpl;

    @RequestMapping(value = "/getLoginState", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson getLoginState(HttpSession httpSession) {
        BaseJson baseJson = new BaseJson();
        String email = (String) httpSession.getAttribute("email");
        if (email == null || email.equals(""))
            baseJson.setErrorCode("1111");
        else
            baseJson.setErrorCode("0000");
        return baseJson;
    }

    @RequestMapping(value = "/loginOut", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson loginOut(HttpSession httpSession) {
        SessionService.initSession(httpSession);
        return new BaseJson();
    }

    @RequestMapping("/toSignIn")
    public String toSignUp() {
        return "signIn";
    }

    @RequestMapping("/loginIn")
    @ResponseBody
    public BaseJson loginIn(@RequestParam String email, @RequestParam String pw,
                            HttpSession httpSession) {
        UserCustom userCustom = new UserCustom();
        userCustom.setEmail(email);
        userCustom.setPassword(pw);
        BaseJson baseJson = loginServiceImpl.signInUser(userCustom);
        if (baseJson.getErrorCode().equals("0001")) {
            BaseJson baseJson1 = loginServiceImpl.getUserName(userCustom);
            httpSession.setAttribute("email", ((UserCustom) baseJson.getObject()).getEmail());
            httpSession.setAttribute("username", ((baseJson1.getObject())));
            httpSession.setAttribute("headp", ((UserCustom) baseJson.getObject()).getHeadp());
            httpSession.setAttribute("usertype", ((UserCustom) baseJson.getObject()).getUsertype());
            Map<String, String> map = new HashMap<>();
            map.put("usertype", ((UserCustom) baseJson.getObject()).getUsertype() + "");
            map.put("emails", ((UserCustom) baseJson.getObject()).getEmail());
            baseJson.setObject(map);
        }
        return baseJson;
    }

}