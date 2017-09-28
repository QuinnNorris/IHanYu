package com.quinnnorris.ssm.util;

import java.text.*;
import java.util.Date;

/**
 * Title: DateFormat
 * Description: 日期格式化系统
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/13 下午2:23 星期三
 * @author: quinn_norris
 * @version: 1.0
 */
public class DateFormat {

    private static final String normal = "yyyy-MM-dd HH:mm:ss";
    private static final String binTime = "yyyyMMddHHmmss";

    public static String dataToFormat(Date date) throws ParseException {
        return new SimpleDateFormat(normal).format(date);
    }

    public static String getStringBinTime() {
        return new SimpleDateFormat(binTime).format(new Date());
    }
}
