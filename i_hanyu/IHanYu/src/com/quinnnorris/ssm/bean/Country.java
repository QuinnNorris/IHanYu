package com.quinnnorris.ssm.bean;

/**
 * Title: Country
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/21 下午2:01 星期四
 * @author: quinn_norris
 * @version: 1.0
 */
public class Country {

    private int id;
    private String country;
    private String country_en;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCountry_en() {
        return country_en;
    }

    public void setCountry_en(String country_en) {
        this.country_en = country_en;
    }
}
