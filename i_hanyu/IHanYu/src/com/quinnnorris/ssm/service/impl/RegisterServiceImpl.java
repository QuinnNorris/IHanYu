package com.quinnnorris.ssm.service.impl;

import com.quinnnorris.ssm.bean.*;
import com.quinnnorris.ssm.mapper.UserCustomMapper;
import com.quinnnorris.ssm.service.RegisterService;
import com.quinnnorris.ssm.util.BaseJson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Title: RegisterServiceImpl
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/13 下午2:32 星期三
 * @author: quinn_norris
 * @version: 1.0
 */
@Service("registerServiceImpl")
public class RegisterServiceImpl implements RegisterService {

    @Autowired
    private UserCustomMapper userCustomMapper;

    @Override
    public BaseJson insertUserFromReg(UserCustom userCustom) {
        BaseJson baseJson = new BaseJson();
        userCustomMapper.insertUserFromReg(userCustom);
        baseJson.setObject(userCustom.getId());
        return baseJson;
    }

    @Override
    public BaseJson findUserByEmail(UserCustom userCustom) {
        BaseJson baseJson = new BaseJson();
        List<UserCustom> selectRes = userCustomMapper.selectUserByEmail(userCustom);
        if (selectRes != null && selectRes.size() >= 1)
            baseJson.setErrorCode("1001");//用户已经注册
        else
            baseJson.setErrorCode("0001");//用户可以注册
        return baseJson;
    }

    @Override
    public BaseJson insertTeacherFromReg(TeacherCustom teacherCustom) {
        BaseJson baseJson = new BaseJson();
        userCustomMapper.insertTeacherFromReg(teacherCustom);
        return baseJson;
    }

    @Override
    public BaseJson insertTeaGoodFromReg(String[] goodAt, Tea_goodCustom tea_goodCustom) {
        BaseJson baseJson = new BaseJson();
        for(int i=0;i<goodAt.length;i++){
            tea_goodCustom.setGoodat(Integer.parseInt(goodAt[i]));
            userCustomMapper.insertTeaGoodFromReg(tea_goodCustom);
        }
        return baseJson;
    }

    @Override
    public BaseJson insertTeaTimeFromReg(String[] time, Tea_timeCustom tea_timeCustom) {
        BaseJson baseJson = new BaseJson();
        for(int i=0;i<time.length;i++){
            tea_timeCustom.setTime(Integer.parseInt(time[i]));
            userCustomMapper.insertTeaTimeFromReg(tea_timeCustom);
        }
        return baseJson;
    }

    @Override
    public BaseJson insertStudentFromReg(StudentCustom studentCustom) {
        BaseJson baseJson = new BaseJson();
        userCustomMapper.insertStudentFromReg(studentCustom);
        return baseJson;
    }

    @Override
    public BaseJson insertPartnerFromReg(PartnerCustom partnerCustom) {
        BaseJson baseJson = new BaseJson();
        userCustomMapper.insertPartnerFromReg(partnerCustom);
        return baseJson;
    }
}
