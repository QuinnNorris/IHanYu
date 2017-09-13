package com.quinnnorris.ssm.service;

import com.quinnnorris.ssm.bean.UserCustom;
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

}
