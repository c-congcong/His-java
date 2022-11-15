package com.ruoyi.project.drug.domain;

import com.ruoyi.framework.web.domain.BaseEntity;

import java.util.Objects;

/**
 * 药品实体类型
 */
public class Drug extends BaseEntity {
    private static final long serialVersionUID = 1L;
    /** 药品主键 */
    private Integer durgId;
    /** 药品名称 */
    private String durgName;
    /** 药品编码 */
    private String durgCode;
    /** 生产厂家外键 */
    private Integer durgProducer;
    /** 药品类型 */
    private String durgType;
    /** 处方类型 */
    private String durgOtcType;
    /** 单位 */
    private String durgUnit;
    /** 处方价格 */
    private Integer durgOtcPrice;
    /** 库存 */
    private Integer durgNumber;
    /** 预警值 */
    private Integer durgNumberMin;
    /** 换算量 */
    private String durgConvert;
    /** 药品状态 */
    private String durgStatus;
    /** 生产厂家引用关系属性 */
    private DrugProducer producer;

    @Override
    public String toString() {
        return "Drug{" +
                "durgId=" + durgId +
                ", durgName='" + durgName + '\'' +
                ", durgCode='" + durgCode + '\'' +
                ", durgProducer=" + durgProducer +
                ", durgType='" + durgType + '\'' +
                ", durgOtcType='" + durgOtcType + '\'' +
                ", durgUnit='" + durgUnit + '\'' +
                ", durgOtcPrice=" + durgOtcPrice +
                ", durgNumber=" + durgNumber +
                ", durgNumberMin=" + durgNumberMin +
                ", durgConvert='" + durgConvert + '\'' +
                ", durgStatus='" + durgStatus + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Drug drug = (Drug) o;
        return Objects.equals(durgId, drug.durgId) &&
                Objects.equals(durgName, drug.durgName) &&
                Objects.equals(durgCode, drug.durgCode) &&
                Objects.equals(durgProducer, drug.durgProducer) &&
                Objects.equals(durgType, drug.durgType) &&
                Objects.equals(durgOtcType, drug.durgOtcType) &&
                Objects.equals(durgUnit, drug.durgUnit) &&
                Objects.equals(durgOtcPrice, drug.durgOtcPrice) &&
                Objects.equals(durgNumber, drug.durgNumber) &&
                Objects.equals(durgNumberMin, drug.durgNumberMin) &&
                Objects.equals(durgConvert, drug.durgConvert) &&
                Objects.equals(durgStatus, drug.durgStatus);
    }

    @Override
    public int hashCode() {
        return Objects.hash(durgId, durgName, durgCode, durgProducer, durgType, durgOtcType, durgUnit, durgOtcPrice, durgNumber, durgNumberMin, durgConvert, durgStatus);
    }

    public DrugProducer getProducer() {
        return producer;
    }

    public void setProducer(DrugProducer producer) {
        this.producer = producer;
    }

    public Integer getDurgId() {
        return durgId;
    }

    public void setDurgId(Integer durgId) {
        this.durgId = durgId;
    }

    public String getDurgName() {
        return durgName;
    }

    public void setDurgName(String durgName) {
        this.durgName = durgName;
    }

    public String getDurgCode() {
        return durgCode;
    }

    public void setDurgCode(String durgCode) {
        this.durgCode = durgCode;
    }

    public Integer getDurgProducer() {
        return durgProducer;
    }

    public void setDurgProducer(Integer durgProducer) {
        this.durgProducer = durgProducer;
    }

    public String getDurgType() {
        return durgType;
    }

    public void setDurgType(String durgType) {
        this.durgType = durgType;
    }

    public String getDurgOtcType() {
        return durgOtcType;
    }

    public void setDurgOtcType(String durgOtcType) {
        this.durgOtcType = durgOtcType;
    }

    public String getDurgUnit() {
        return durgUnit;
    }

    public void setDurgUnit(String durgUnit) {
        this.durgUnit = durgUnit;
    }

    public Integer getDurgOtcPrice() {
        return durgOtcPrice;
    }

    public void setDurgOtcPrice(Integer durgOtcPrice) {
        this.durgOtcPrice = durgOtcPrice;
    }

    public Integer getDurgNumber() {
        return durgNumber;
    }

    public void setDurgNumber(Integer durgNumber) {
        this.durgNumber = durgNumber;
    }

    public Integer getDurgNumberMin() {
        return durgNumberMin;
    }

    public void setDurgNumberMin(Integer durgNumberMin) {
        this.durgNumberMin = durgNumberMin;
    }

    public String getDurgConvert() {
        return durgConvert;
    }

    public void setDurgConvert(String durgConvert) {
        this.durgConvert = durgConvert;
    }

    public String getDurgStatus() {
        return durgStatus;
    }

    public void setDurgStatus(String durgStatus) {
        this.durgStatus = durgStatus;
    }
}
