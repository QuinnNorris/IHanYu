package com.quinnnorris.ssm.bean;

/**
 * Title: PartnerCustom
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/21 下午2:19 星期四
 * @author: quinn_norris
 * @version: 1.0
 */
public class PartnerCustom extends Partner {

    private String sex_en;
    private String fisL;
    private String secL;
    private String fisL_en;
    private String secL_en;

    public String getSex_en() {
        return sex_en;
    }

    public void setSex_en(String sex_en) {
        this.sex_en = sex_en;
    }

    public String getFisL() {
        return fisL;
    }

    public void setFisL(String fisL) {
        this.fisL = fisL;
    }

    public String getSecL() {
        return secL;
    }

    public void setSecL(String secL) {
        this.secL = secL;
    }

    public String getFisL_en() {
        return fisL_en;
    }

    public void setFisL_en(String fisL_en) {
        this.fisL_en = fisL_en;
    }

    public String getSecL_en() {
        return secL_en;
    }

    public void setSecL_en(String secL_en) {
        this.secL_en = secL_en;
    }
}
