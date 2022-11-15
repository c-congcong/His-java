package com.ruoyi.project.drug.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.framework.web.domain.BaseEntity;

import java.util.Date;
import java.util.Objects;

/**
 * 采购入库相关实体。
 * 包含多张表格中的部分字段信息：
 *   药品表格（药品名称等）、采购入库单表格（单据主键等）、单据明细表格（批次，状态等）、供应商表格（名称、主键）。
 */
public class DrugsOrderAndOthers extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** drugs_order表格 单据主键 */
    private Integer orderId;
    /** drugs_support表格 供应商主键 */
    private Integer supportId;
    /** drugs_support表格 供应商名称 */
    private String supportName;
    /** drugs_durg表格 药品主键 */
    private Integer durgId;
    /** drugs_durg表格 药品名字 */
    private String durgName;
    /** drugs_order_detail表格 单据明细主键 */
    private Integer detailId;
    /** drugs_order_detail表格 单据明细批次号 */
    private Integer detailBathNum;
    /** drugs_order_detail表格 单据明细批次总额 */
    private Double detailTotalPrice;
    /** drugs_order_detail表格 单据明细状态 数据字典实现 0-申请状态；1-待审核状态；2-审核失败状态；3-审核成功状态；4-已入库状态；5-作废状态 */
    private Integer detailStatus;
    /** drugs_order_detail表格 入库操作人 */
    private String detailOperator;
    /** drugs_order表格 申请人 */
    private String orderMan;
    /** drugs_order表格 单据创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    /** drugs_order_detail表格 单据明细入库时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date detailDate;
    private String detailRemarks;

    @Override
    public String toString() {
        return "DrugsOrderAndOthers{" +
                "orderId=" + orderId +
                ", supportId=" + supportId +
                ", supportName='" + supportName + '\'' +
                ", durgId=" + durgId +
                ", durgName='" + durgName + '\'' +
                ", detailId=" + detailId +
                ", detailBathNum=" + detailBathNum +
                ", detailTotalPrice=" + detailTotalPrice +
                ", detailStatus=" + detailStatus +
                ", detailOperator='" + detailOperator + '\'' +
                ", orderMan='" + orderMan + '\'' +
                ", createTime=" + createTime +
                ", detailDate=" + detailDate +
                ", detailRemarks='" + detailRemarks + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DrugsOrderAndOthers that = (DrugsOrderAndOthers) o;
        return Objects.equals(orderId, that.orderId) &&
                Objects.equals(supportId, that.supportId) &&
                Objects.equals(supportName, that.supportName) &&
                Objects.equals(durgId, that.durgId) &&
                Objects.equals(durgName, that.durgName) &&
                Objects.equals(detailId, that.detailId) &&
                Objects.equals(detailBathNum, that.detailBathNum) &&
                Objects.equals(detailTotalPrice, that.detailTotalPrice) &&
                Objects.equals(detailStatus, that.detailStatus) &&
                Objects.equals(detailOperator, that.detailOperator) &&
                Objects.equals(orderMan, that.orderMan) &&
                Objects.equals(createTime, that.createTime) &&
                Objects.equals(detailDate, that.detailDate) &&
                Objects.equals(detailRemarks, that.detailRemarks);
    }

    @Override
    public int hashCode() {
        return Objects.hash(orderId, supportId, supportName, durgId, durgName, detailId, detailBathNum, detailTotalPrice, detailStatus, detailOperator, orderMan, createTime, detailDate, detailRemarks);
    }

    public String getDetailRemarks() {
        return detailRemarks;
    }

    public void setDetailRemarks(String detailRemarks) {
        this.detailRemarks = detailRemarks;
    }
    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
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

    public Integer getDetailId() {
        return detailId;
    }

    public void setDetailId(Integer detailId) {
        this.detailId = detailId;
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

    public Integer getDetailStatus() {
        return detailStatus;
    }

    public void setDetailStatus(Integer detailStatus) {
        this.detailStatus = detailStatus;
    }

    public String getDetailOperator() {
        return detailOperator;
    }

    public void setDetailOperator(String detailOperator) {
        this.detailOperator = detailOperator;
    }

    public String getOrderMan() {
        return orderMan;
    }

    public void setOrderMan(String orderMan) {
        this.orderMan = orderMan;
    }

    @Override
    public Date getCreateTime() {
        return createTime;
    }

    @Override
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getDetailDate() {
        return detailDate;
    }

    public void setDetailDate(Date detailDate) {
        this.detailDate = detailDate;
    }
}
