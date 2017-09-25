package com.quinnnorris.ssm.mapper;

import com.quinnnorris.ssm.bean.Tea_goodCustom;
import com.quinnnorris.ssm.bean.Tea_timeCustom;
import com.quinnnorris.ssm.bean.Tea_typeCustom;
import com.quinnnorris.ssm.bean.WeekCustom;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Title: VisitCustomMapper
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/25 下午7:41 星期一
 * @author: quinn_norris
 * @version: 1.0
 */
@Repository("visitCustomMapper")
public interface VisitCustomMapper {

    public List<Tea_typeCustom> selectTeacherGood(Tea_goodCustom tea_goodCustom);

    public List<WeekCustom> selectTeacherTime(Tea_timeCustom tea_timeCustom);
}
