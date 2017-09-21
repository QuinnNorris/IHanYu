package com.quinnnorris.ssm.mapper;

import com.quinnnorris.ssm.bean.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Title: UserCustomMapper
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/13 下午2:35 星期三
 * @author: quinn_norris
 * @version: 1.0
 */
@Repository("userCustomMapper")
public interface UserCustomMapper {

    public List<UserCustom> selectUserByEmail(UserCustom userCustom);

    public void insertUserFromReg(UserCustom userCustom);

    public List<UserCustom> selectUserByNickname(UserCustom userCustom);

    public void insertTeacherFromReg(TeacherCustom teacherCustom);

    public void insertTeaGoodFromReg(Tea_goodCustom tea_goodCustom);

    public void insertTeaTimeFromReg(Tea_timeCustom tea_timeCustom);

    public void insertStudentFromReg(StudentCustom studentCustom);

    public void insertPartnerFromReg(PartnerCustom partnerCustom);
}

