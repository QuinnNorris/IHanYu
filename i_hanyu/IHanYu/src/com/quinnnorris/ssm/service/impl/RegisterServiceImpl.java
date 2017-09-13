package com.quinnnorris.ssm.service.impl;

import com.quinnnorris.ssm.bean.UserCustom;
import com.quinnnorris.ssm.mapper.UserCustomMapper;
import com.quinnnorris.ssm.service.RegisterService;
import com.quinnnorris.ssm.util.BaseJson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Title: RegisterServiceImpl
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/13 下午2:32 星期三
 * @author: quinn_norris
 * @version: 1.0
 */
@Service("registerServiceImpl")
public class RegisterServiceImpl implements RegisterService {

    @Autowired
    private UserCustomMapper userCustomMapper;

    @Override
    public BaseJson insertUserFromReg(UserCustom userCustom) {
        return null;
    }
}
