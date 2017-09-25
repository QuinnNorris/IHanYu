package com.quinnnorris.ssm.service.impl;

import com.quinnnorris.ssm.bean.*;
import com.quinnnorris.ssm.mapper.LoginCustomMapper;
import com.quinnnorris.ssm.mapper.UserCustomMapper;
import com.quinnnorris.ssm.mapper.VisitCustomMapper;
import com.quinnnorris.ssm.service.VisitService;
import com.quinnnorris.ssm.util.BaseJson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Title: VisitServiceImpl
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/25 下午7:18 星期一
 * @author: quinn_norris
 * @version: 1.0
 */
@Service("visitServiceImpl")
public class VisitServiceImpl implements VisitService {

    @Autowired
    UserCustomMapper userCustomMapper;

    @Autowired
    LoginCustomMapper loginCustomMapper;

    @Autowired
    VisitCustomMapper visitCustomMapper;

    @Override
    public BaseJson serachUserByEmail(UserCustom userCustom) {
        BaseJson baseJson = new BaseJson();
        List<UserCustom> selectRes = userCustomMapper.selectUserByEmail(userCustom);
        baseJson.setObject(selectRes.get(0).getId());
        if (selectRes != null && selectRes.size() >= 1)
            baseJson.setErrorCode("0001");//存在用户
        else
            baseJson.setErrorCode("1001");//不存在用户
        return baseJson;
    }

    @Override
    public BaseJson getTeachersMessage(TeacherCustom teacherCustom) {
        BaseJson baseJson = new BaseJson();
        List<TeacherCustom> selectTea = loginCustomMapper.selectTeacherById(teacherCustom);
        baseJson.setObject(selectTea.get(0));
        return baseJson;
    }

    @Override
    public BaseJson getTeacherGoodAt(Tea_goodCustom tea_goodCustom) {
        BaseJson baseJson = new BaseJson();
        List<Tea_typeCustom> selectRes = visitCustomMapper.selectTeacherGood(tea_goodCustom);
        String[] goodAt = {"",""};
        for (Tea_typeCustom tea_type : selectRes) {
            if (tea_type != null) {
                if (tea_type.getType_cn() != null)
                    goodAt[0] += tea_type.getType_cn() + " ";
                if (tea_type.getType_en() != null)
                    goodAt[1] += tea_type.getType_en() + " ";
            }
        }
        baseJson.setObject(goodAt);
        return baseJson;
    }

    @Override
    public BaseJson getTeacherTime(Tea_timeCustom tea_timeCustom) {
        BaseJson baseJson = new BaseJson();
        List<WeekCustom> selectRes = visitCustomMapper.selectTeacherTime(tea_timeCustom);
        String[] time =  {"",""};
        for (WeekCustom week : selectRes) {
            if (week != null) {
                if (week.getWeek() != null)
                    time[0] += week.getWeek() + " ";
                if (week.getWeek_en() != null)
                    time[1] += week.getWeek_en() + " ";
            }
        }
        baseJson.setObject(time);
        return baseJson;
    }
}
