package com.quinnnorris.ssm.util;

/**
 * Title: BaseJson
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/13 下午2:26 星期三
 * @author: quinn_norris
 * @version: 1.0
 */
public class BaseJson {

    private String errorCode;
    private Object object;

    public BaseJson() {
    }

    public BaseJson(String errorCode) {
        this.errorCode = errorCode;
    }

    public String getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(String errorCode) {
        this.errorCode = errorCode;
    }

    public Object getObject() {
        return object;
    }

    public void setObject(Object object) {
        this.object = object;
    }
}
