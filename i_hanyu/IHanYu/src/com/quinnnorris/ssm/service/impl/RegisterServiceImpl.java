package com.quinnnorris.ssm.service.impl;

import com.quinnnorris.ssm.bean.UserCustom;
import com.quinnnorris.ssm.mapper.UserCustomMapper;
import com.quinnnorris.ssm.service.RegisterService;
import com.quinnnorris.ssm.util.BaseJson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

    @Override
    public BaseJson findUserByEmail(UserCustom userCustom) {
        BaseJson baseJson = new BaseJson();
        List<UserCustom> selectRes = userCustomMapper.selectUserByEmail(userCustom);
        if (selectRes != null && selectRes.size() >= 1)
            baseJson.setErrorCode("1001");//用户已经注册
        else
            baseJson.setErrorCode("0001");//用户可以注册
        return baseJson;
    }
}
