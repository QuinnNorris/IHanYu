package com.quinnnorris.ssm.mapper;

import com.quinnnorris.ssm.bean.StudentCustom;
import com.quinnnorris.ssm.bean.TeacherCustom;
import com.quinnnorris.ssm.bean.UserCustom;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Title: LoginCustomMapper
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/23 下午3:02 星期六
 * @author: quinn_norris
 * @version: 1.0
 */
@Repository("loginCustomMapper")
public interface LoginCustomMapper {

    public List<UserCustom> selectUserByEmail(UserCustom userCustom);

    public List<TeacherCustom> selectTeacherById(TeacherCustom teacherCustom);

    public List<StudentCustom> selectStudentById(StudentCustom studentCustom);
}
