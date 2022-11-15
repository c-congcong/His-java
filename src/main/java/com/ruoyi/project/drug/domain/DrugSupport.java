package com.ruoyi.project.drug.domain;

import com.ruoyi.framework.web.domain.BaseEntity;

import java.util.Objects;

/**
 * 供应商实体类型。 drugs_support 表格
 */
public class DrugSupport extends BaseEntity {
    private static final long serialVersionUID = 1L;
    /** 供应商主键 */
    private Integer supportId;
    /** 供应商名称 */
    private String supportName;
    /** 供应商负责人 */
    private String supportBoss;
    /** 供应商电话 */
    private String supportPhone;
    /** 供应商银行卡号 */
    private String supportCard;
    /** 供应商地址 */
    private String supportAddress;
    /** 供应商状态 */
    private String supportStatus;

    @Override
    public String toString() {
        return "DrugSupport{" +
                "supportId=" + supportId +
                ", supportName='" + supportName + '\'' +
                ", supportBoss='" + supportBoss + '\'' +
                ", supportPhone='" + supportPhone + '\'' +
                ", supportCard='" + supportCard + '\'' +
                ", supportAddress='" + supportAddress + '\'' +
                ", supportStatus='" + supportStatus + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DrugSupport that = (DrugSupport) o;
        return Objects.equals(supportId, that.supportId) &&
                Objects.equals(supportName, that.supportName) &&
                Objects.equals(supportBoss, that.supportBoss) &&
                Objects.equals(supportPhone, that.supportPhone) &&
                Objects.equals(supportCard, that.supportCard) &&
                Objects.equals(supportAddress, that.supportAddress) &&
                Objects.equals(supportStatus, that.supportStatus);
    }

    @Override
    public int hashCode() {
        return Objects.hash(supportId, supportName, supportBoss, supportPhone, supportCard, supportAddress, supportStatus);
    }

    public Integer getSupportId() {
        return supportId;
    }

    public void setSupportId(Integer supportId) {
        this.supportId = supportId;
    }

    public String getSupportName() {
        return supportName;
    }

    public void setSupportName(String supportName) {
        this.supportName = supportName;
    }

    public String getSupportBoss() {
        return supportBoss;
    }

    public void setSupportBoss(String supportBoss) {
        this.supportBoss = supportBoss;
    }

    public String getSupportPhone() {
        return supportPhone;
    }

    public void setSupportPhone(String supportPhone) {
        this.supportPhone = supportPhone;
    }

    public String getSupportCard() {
        return supportCard;
    }

    public void setSupportCard(String supportCard) {
        this.supportCard = supportCard;
    }

    public String getSupportAddress() {
        return supportAddress;
    }

    public void setSupportAddress(String supportAddress) {
        this.supportAddress = supportAddress;
    }

    public String getSupportStatus() {
        return supportStatus;
    }

    public void setSupportStatus(String supportStatus) {
        this.supportStatus = supportStatus;
    }
}
