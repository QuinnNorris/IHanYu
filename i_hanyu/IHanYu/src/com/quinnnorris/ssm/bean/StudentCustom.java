package com.quinnnorris.ssm.bean;

/**
 * Title: StudentCustom
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/21 下午2:03 星期四
 * @author: quinn_norris
 * @version: 1.0
 */
public class StudentCustom extends Student {

    private String country_en;
    private String country_cn;

    public String getCountry_en() {
        return country_en;
    }

    public void setCountry_en(String country_en) {
        this.country_en = country_en;
    }

    public String getCountry_cn() {
        return country_cn;
    }

    public void setCountry_cn(String country_cn) {
        this.country_cn = country_cn;
    }
}
