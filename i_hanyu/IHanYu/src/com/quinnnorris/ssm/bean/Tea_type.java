package com.quinnnorris.ssm.bean;

/**
 * Title: Tea_type
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/21 上午10:30 星期四
 * @author: quinn_norris
 * @version: 1.0
 */
public class Tea_type {

    private int id;
    private String type_en;
    private String type_cn;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType_en() {
        return type_en;
    }

    public void setType_en(String type_en) {
        this.type_en = type_en;
    }

    public String getType_cn() {
        return type_cn;
    }

    public void setType_cn(String type_cn) {
        this.type_cn = type_cn;
    }
}
