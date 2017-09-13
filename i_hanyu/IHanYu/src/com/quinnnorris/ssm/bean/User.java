package com.quinnnorris.ssm.bean;

import java.util.Date;

/**
 * Title: User
 * Description: user表映射bean对象
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/13 下午2:26 星期三
 * @author: quinn_norris
 * @version: 1.0
 */
public class User {


    private int id;
    private String email;
    private String password;
    private String headp;
    private Date regtime;
    private double lati;
    private double longi;
    private int usertype;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getHeadp() {
        return headp;
    }

    public void setHeadp(String headp) {
        this.headp = headp;
    }

    public Date getRegtime() {
        return regtime;
    }

    public void setRegtime(Date regtime) {
        this.regtime = regtime;
    }

    public double getLati() {
        return lati;
    }

    public void setLati(double lati) {
        this.lati = lati;
    }

    public double getLongi() {
        return longi;
    }

    public void setLongi(double longi) {
        this.longi = longi;
    }

    public int getUsertype() {
        return usertype;
    }

    public void setUsertype(int usertype) {
        this.usertype = usertype;
    }
}
