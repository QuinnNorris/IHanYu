package com.quinnnorris.ssm.bean;

/**
 * Title: Language
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/21 下午2:01 星期四
 * @author: quinn_norris
 * @version: 1.0
 */
public class Language {

    private int id;
    private String language;
    private String Language_en;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getLanguage_en() {
        return Language_en;
    }

    public void setLanguage_en(String language_en) {
        Language_en = language_en;
    }
}
