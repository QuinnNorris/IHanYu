package com.quinnnorris.ssm.bean;

/**
 * Title: Student
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/21 下午2:01 星期四
 * @author: quinn_norris
 * @version: 1.0
 */
public class Student {

    private int id;
    private String userName;
    private String wechat;
    private int country_id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getWechat() {
        return wechat;
    }

    public void setWechat(String wechat) {
        this.wechat = wechat;
    }

    public int getCountry_id() {
        return country_id;
    }

    public void setCountry_id(int country_id) {
        this.country_id = country_id;
    }
}
