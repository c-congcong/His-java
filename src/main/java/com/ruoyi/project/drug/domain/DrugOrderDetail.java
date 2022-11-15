package com.ruoyi.project.drug.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

/**
 * 采购单据明细实体
 */
public class DrugOrderDetail implements Serializable {
    private static final long serialVersionUID = 1L;

    /** 采购单据明细 主键 */
    private Integer detailId;
    /** 采购单据明细 入库操作人 */
    private String detailOperator;
    /** 采购单据明细 入库时间 */
    private Date detailDate;
    /** 采购单据明细 状态 */
    private Integer detailStatus;
    /** 采购单据明细 药品主键 */
    private Integer detailDrugid;
    /** 采购单据明细 订单主键 */
    private Integer orderId;
    /** 采购单据明细 采购数量 */
    private Double detailDrugNum;
    /** 采购单据明细 批量单价 */
    private Double detailDrugPrice;
    /** 采购单据明细 批次号 */
    private Integer detailBathNum;
    /** 采购单据明细 批发总价 */
    private Double detailTotalPrice;
    /** 采购单据明细 描述 */
    private String detailRemarks;
    /** 采购单据明细 单位？？？ */
    private String detailNorms;

    @Override
    public String toString() {
        return "DrugOrderDetail{" +
                "detailId=" + detailId +
                ", detailOperator='" + detailOperator + '\'' +
                ", detailDate=" + detailDate +
                ", detailStatus=" + detailStatus +
                ", detailDrugid=" + detailDrugid +
                ", orderId=" + orderId +
                ", detailDrugNum=" + detailDrugNum +
                ", detailDrugPrice=" + detailDrugPrice +
                ", detailBathNum=" + detailBathNum +
                ", detailTotalPrice=" + detailTotalPrice +
                ", detailRemarks='" + detailRemarks + '\'' +
                ", detailNorms='" + detailNorms + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DrugOrderDetail that = (DrugOrderDetail) o;
        return Objects.equals(detailId, that.detailId) &&
                Objects.equals(detailOperator, that.detailOperator) &&
                Objects.equals(detailDate, that.detailDate) &&
                Objects.equals(detailStatus, that.detailStatus) &&
                Objects.equals(detailDrugid, that.detailDrugid) &&
                Objects.equals(orderId, that.orderId) &&
                Objects.equals(detailDrugNum, that.detailDrugNum) &&
                Objects.equals(detailDrugPrice, that.detailDrugPrice) &&
                Objects.equals(detailBathNum, that.detailBathNum) &&
                Objects.equals(detailTotalPrice, that.detailTotalPrice) &&
                Objects.equals(detailRemarks, that.detailRemarks) &&
                Objects.equals(detailNorms, that.detailNorms);
    }

    @Override
    public int hashCode() {
        return Objects.hash(detailId, detailOperator, detailDate, detailStatus, detailDrugid, orderId, detailDrugNum, detailDrugPrice, detailBathNum, detailTotalPrice, detailRemarks, detailNorms);
    }

    public Integer getDetailId() {
        return detailId;
    }

    public void setDetailId(Integer detailId) {
        this.detailId = detailId;
    }

    public String getDetailOperator() {
        return detailOperator;
    }

    public void setDetailOperator(String detailOperator) {
        this.detailOperator = detailOperator;
    }

    public Date getDetailDate() {
        return detailDate;
    }

    public void setDetailDate(Date detailDate) {
        this.detailDate = detailDate;
    }

    public Integer getDetailStatus() {
        return detailStatus;
    }

    public void setDetailStatus(Integer detailStatus) {
        this.detailStatus = detailStatus;
    }

    public Integer getDetailDrugid() {
        return detailDrugid;
    }

    public void setDetailDrugid(Integer detailDrugid) {
        this.detailDrugid = detailDrugid;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Double getDetailDrugNum() {
        return detailDrugNum;
    }

    public void setDetailDrugNum(Double detailDrugNum) {
        this.detailDrugNum = detailDrugNum;
    }

    public Double getDetailDrugPrice() {
        return detailDrugPrice;
    }

    public void setDetailDrugPrice(Double detailDrugPrice) {
        this.detailDrugPrice = detailDrugPrice;
    }

    public Integer getDetailBathNum() {
        return detailBathNum;
    }

    public void setDetailBathNum(Integer detailBathNum) {
        this.detailBathNum = detailBathNum;
    }

    public Double getDetailTotalPrice() {
        return detailTotalPrice;
    }

    public void setDetailTotalPrice(Double detailTotalPrice) {
        this.detailTotalPrice = detailTotalPrice;
    }

    public String getDetailRemarks() {
        return detailRemarks;
    }

    public void setDetailRemarks(String detailRemarks) {
        this.detailRemarks = detailRemarks;
    }

    public String getDetailNorms() {
        return detailNorms;
    }

    public void setDetailNorms(String detailNorms) {
        this.detailNorms = detailNorms;
    }
}
