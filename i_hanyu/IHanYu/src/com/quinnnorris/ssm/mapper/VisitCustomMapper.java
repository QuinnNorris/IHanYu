package com.quinnnorris.ssm.mapper;

import com.quinnnorris.ssm.bean.*;
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

    public List<PartnerCustom> selectPartnerById(PartnerCustom partnerCustom);

    public LanguageCustom selectLangById(int firstL_id);

    public CountryCustom selectCountryById(int country_id);
}
