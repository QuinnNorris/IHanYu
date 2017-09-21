package com.quinnnorris.ssm.service;

import com.quinnnorris.ssm.bean.*;
import com.quinnnorris.ssm.util.BaseJson;

/**
 * Title: RegisterService
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/13 下午2:32 星期三
 * @author: quinn_norris
 * @version: 1.0
 */
public interface RegisterService {

    public BaseJson insertUserFromReg(UserCustom userCustom);

    public BaseJson findUserByEmail(UserCustom userCustom);

    public BaseJson insertTeacherFromReg(TeacherCustom teacherCustom);

    public BaseJson insertTeaGoodFromReg(String[] goodAt, Tea_goodCustom tea_goodCustom);

    public BaseJson insertTeaTimeFromReg(String[] time, Tea_timeCustom tea_timeCustom);

    public BaseJson insertStudentFromReg(StudentCustom studentCustom);

    public BaseJson insertPartnerFromReg(PartnerCustom partnerCustom);
}
