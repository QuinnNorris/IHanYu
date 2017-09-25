package com.quinnnorris.ssm.service;

import com.quinnnorris.ssm.bean.Tea_goodCustom;
import com.quinnnorris.ssm.bean.Tea_timeCustom;
import com.quinnnorris.ssm.bean.TeacherCustom;
import com.quinnnorris.ssm.bean.UserCustom;
import com.quinnnorris.ssm.util.BaseJson;

/**
 * Title: VisitService
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/25 下午7:17 星期一
 * @author: quinn_norris
 * @version: 1.0
 */
public interface VisitService {

    public BaseJson serachUserByEmail(UserCustom userCustom);

    public BaseJson getTeachersMessage(TeacherCustom teacherCustom);

    public BaseJson getTeacherGoodAt(Tea_goodCustom tea_goodCustom);

    public BaseJson getTeacherTime(Tea_timeCustom tea_timeCustom);
}
