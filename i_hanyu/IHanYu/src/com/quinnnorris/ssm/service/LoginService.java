package com.quinnnorris.ssm.service;

import com.quinnnorris.ssm.bean.UserCustom;
import com.quinnnorris.ssm.util.BaseJson;

/**
 * Title: LoginService
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/23 下午3:00 星期六
 * @author: quinn_norris
 * @version: 1.0
 */
public interface LoginService {

    public BaseJson signInUser(UserCustom userCustom);

    public BaseJson getUserName(UserCustom userCustom);
}
