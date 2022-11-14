package com.ruoyi.project.his.domain;

import com.ruoyi.framework.web.domain.BaseEntity;

import java.util.Objects;

/**
 * 医生实体类型
 * @author 小吴同学
 */
public class Doctor extends BaseEntity {
    private static final long serialVersionUID = 1L;
    /** 主键 */
    private Integer dId;
    /** 姓名 */
    private String dName;
    /** 登录密码 */
    private String dPassword;
    /** 科室主键 */
    private Integer deptsId;
    /** 电话 */
    private String dPhone;
    /** 性别 */
    private String dSex;
    /** 年龄 */
    private Integer dAge;
    /** 医生级别 */
    private String dLevel;
    /** 是否排班 */
    private Integer orderwork;
    /** 教育背景 */
    private String dEducationBg;

    public Integer getdId() {
        return dId;
    }

    public void setdId(Integer dId) {
        this.dId = dId;
    }

    public String getdName() {
        return dName;
    }

    public void setdName(String dName) {
        this.dName = dName;
    }

    public String getdPassword() {
        return dPassword;
    }

    public void setdPassword(String dPassword) {
        this.dPassword = dPassword;
    }

    public Integer getDeptsId() {
        return deptsId;
    }

    public void setDeptsId(Integer deptsId) {
        this.deptsId = deptsId;
    }

    public String getdPhone() {
        return dPhone;
    }

    public void setdPhone(String dPhone) {
        this.dPhone = dPhone;
    }

    public String getdSex() {
        return dSex;
    }

    public void setdSex(String dSex) {
        this.dSex = dSex;
    }

    public Integer getdAge() {
        return dAge;
    }

    public void setdAge(Integer dAge) {
        this.dAge = dAge;
    }

    public String getdLevel() {
        return dLevel;
    }

    public void setdLevel(String dLevel) {
        this.dLevel = dLevel;
    }

    public Integer getOrderwork() {
        return orderwork;
    }

    public void setOrderwork(Integer orderwork) {
        this.orderwork = orderwork;
    }

    public String getdEducationBg() {
        return dEducationBg;
    }

    public void setdEducationBg(String dEducationBg) {
        this.dEducationBg = dEducationBg;
    }

    @Override
    public String toString() {
        return "Doctor{" +
                "dId=" + dId +
                ", dName='" + dName + '\'' +
                ", dPassword='" + dPassword + '\'' +
                ", deptsId=" + deptsId +
                ", dPhone='" + dPhone + '\'' +
                ", dSex='" + dSex + '\'' +
                ", dAge=" + dAge +
                ", dLevel='" + dLevel + '\'' +
                ", orderwork=" + orderwork +
                ", dEducationBg='" + dEducationBg + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Doctor doctor = (Doctor) o;
        return Objects.equals(dId, doctor.dId) &&
                Objects.equals(dName, doctor.dName) &&
                Objects.equals(dPassword, doctor.dPassword) &&
                Objects.equals(deptsId, doctor.deptsId) &&
                Objects.equals(dPhone, doctor.dPhone) &&
                Objects.equals(dSex, doctor.dSex) &&
                Objects.equals(dAge, doctor.dAge) &&
                Objects.equals(dLevel, doctor.dLevel) &&
                Objects.equals(orderwork, doctor.orderwork) &&
                Objects.equals(dEducationBg, doctor.dEducationBg);
    }

    @Override
    public int hashCode() {
        return Objects.hash(dId, dName, dPassword, deptsId, dPhone, dSex, dAge, dLevel, orderwork, dEducationBg);
    }
}
