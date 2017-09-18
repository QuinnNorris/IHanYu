package com.quinnnorris.ssm.util;

import javax.servlet.http.HttpSession;
import java.util.Enumeration;

/**
 * Title: SessionService
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/18 下午4:47 星期一
 * @author: quinn_norris
 * @version: 1.0
 */
public class SessionService {

    public static void initSession(HttpSession httpSession) {
        Enumeration<String> attributeNames = httpSession.getAttributeNames();
        while (attributeNames.hasMoreElements())
            httpSession.removeAttribute(attributeNames.nextElement());
    }

}
