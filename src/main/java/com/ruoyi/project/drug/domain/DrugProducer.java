package com.ruoyi.project.drug.domain;

import com.ruoyi.framework.web.domain.BaseEntity;

import java.util.Objects;

/**
 * 药品生产厂家实体
 */
public class DrugProducer extends BaseEntity {
    private static final long serialVersionUID = 1L;
    /** 厂家主键 */
    private Integer proId;
    /** 厂家名称 */
    private String proName;
    /** 厂家编码 */
    private String proCode;
    /** 负责人 */
    private String proBoss;
    /** 联系电话 */
    private String proPhone;
    /** 关键字 */
    private String proKeywords;
    /** 厂家状态 */
    private String proStatus;
    /** 厂家地址 */
    private String proAddress;

    @Override
    public String toString() {
        return "DrugProducer{" +
                "proId=" + proId +
                ", proName='" + proName + '\'' +
                ", proCode='" + proCode + '\'' +
                ", proBoss='" + proBoss + '\'' +
                ", proPhone='" + proPhone + '\'' +
                ", proKeywords='" + proKeywords + '\'' +
                ", proStatus='" + proStatus + '\'' +
                ", proAddress='" + proAddress + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DrugProducer that = (DrugProducer) o;
        return Objects.equals(proId, that.proId) &&
                Objects.equals(proName, that.proName) &&
                Objects.equals(proCode, that.proCode) &&
                Objects.equals(proBoss, that.proBoss) &&
                Objects.equals(proPhone, that.proPhone) &&
                Objects.equals(proKeywords, that.proKeywords) &&
                Objects.equals(proStatus, that.proStatus) &&
                Objects.equals(proAddress, that.proAddress);
    }

    @Override
    public int hashCode() {
        return Objects.hash(proId, proName, proCode, proBoss, proPhone, proKeywords, proStatus, proAddress);
    }

    public Integer getProId() {
        return proId;
    }

    public void setProId(Integer proId) {
        this.proId = proId;
    }

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public String getProCode() {
        return proCode;
    }

    public void setProCode(String proCode) {
        this.proCode = proCode;
    }

    public String getProBoss() {
        return proBoss;
    }

    public void setProBoss(String proBoss) {
        this.proBoss = proBoss;
    }

    public String getProPhone() {
        return proPhone;
    }

    public void setProPhone(String proPhone) {
        this.proPhone = proPhone;
    }

    public String getProKeywords() {
        return proKeywords;
    }

    public void setProKeywords(String proKeywords) {
        this.proKeywords = proKeywords;
    }

    public String getProStatus() {
        return proStatus;
    }

    public void setProStatus(String proStatus) {
        this.proStatus = proStatus;
    }

    public String getProAddress() {
        return proAddress;
    }

    public void setProAddress(String proAddress) {
        this.proAddress = proAddress;
    }
}
