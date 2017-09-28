package com.quinnnorris.ssm.service.impl;

import com.quinnnorris.ssm.bean.StudentCustom;
import com.quinnnorris.ssm.bean.TeacherCustom;
import com.quinnnorris.ssm.bean.UserCustom;
import com.quinnnorris.ssm.mapper.LoginCustomMapper;
import com.quinnnorris.ssm.mapper.UserCustomMapper;
import com.quinnnorris.ssm.service.LoginService;
import com.quinnnorris.ssm.util.BaseJson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Title: LoginServiceImpl
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/23 下午3:00 星期六
 * @author: quinn_norris
 * @version: 1.0
 */
@Service("loginServiceImpl")
public class LoginServiceImpl implements LoginService {

    @Autowired
    LoginCustomMapper loginCustomMapper;

    @Autowired
    UserCustomMapper userCustomMapper;

    @Override
    public BaseJson signInUser(UserCustom userCustom) {
        BaseJson baseJson = new BaseJson();
        List<UserCustom> selectRes = loginCustomMapper.selectUserByEmail(userCustom);
        if (selectRes != null && selectRes.size() > 0) {
            baseJson.setErrorCode("0001");//注册用户存在
            baseJson.setObject(selectRes.get(0));
        } else
            baseJson.setErrorCode("1001");//注册用户不存在
        return baseJson;
    }

    @Override
    public BaseJson getUserName(UserCustom userCustom) {
        BaseJson baseJson = new BaseJson();
        List<UserCustom> selectRes = userCustomMapper.selectUserByEmail(userCustom);
        UserCustom custom = new UserCustom();
        if (selectRes.get(0).getUsertype() == 1) {
            TeacherCustom teacherCustom = new TeacherCustom();
            teacherCustom.setId(selectRes.get(0).getId());
            List<TeacherCustom> selectTea = loginCustomMapper.selectTeacherById(teacherCustom);
            baseJson.setObject(selectTea.get(0).getFirstname() + selectTea.get(0).getLastname());
        } else {
            StudentCustom studentCustom = new StudentCustom();
            studentCustom.setId(selectRes.get(0).getId());
            List<StudentCustom> selectStu = loginCustomMapper.selectStudentById(studentCustom);
            baseJson.setObject(selectStu.get(0).getUserName());
        }
        return baseJson;
    }
}
