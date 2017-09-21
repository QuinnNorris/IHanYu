package com.quinnnorris.ssm.bean;

/**
 * Title: Partner
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/21 下午2:19 星期四
 * @author: quinn_norris
 * @version: 1.0
 */
public class Partner {

    private int id;
    private int firstL_id;
    private int secondL_id;
    private String sex;
    private String psex;
    private String selfIntro;
    private int isStudent;
    private String university;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getFirstL_id() {
        return firstL_id;
    }

    public void setFirstL_id(int firstL_id) {
        this.firstL_id = firstL_id;
    }

    public int getSecondL_id() {
        return secondL_id;
    }

    public void setSecondL_id(int secondL_id) {
        this.secondL_id = secondL_id;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPsex() {
        return psex;
    }

    public void setPsex(String psex) {
        this.psex = psex;
    }

    public String getSelfIntro() {
        return selfIntro;
    }

    public void setSelfIntro(String selfIntro) {
        this.selfIntro = selfIntro;
    }

    public int getIsStudent() {
        return isStudent;
    }

    public void setIsStudent(int isStudent) {
        this.isStudent = isStudent;
    }

    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university;
    }
}
