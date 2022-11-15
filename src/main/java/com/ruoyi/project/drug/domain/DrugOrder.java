package com.ruoyi.project.drug.domain;

import com.ruoyi.framework.web.domain.BaseEntity;

import java.util.Objects;

/**
 * 采购单据实体
 */
public class DrugOrder extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** 采购单主键 */
    private Integer orderId;
    /** 供应商主键 */
    private Integer orderSupId;
    /** 采购单总额 */
    private Double orderTotal;
    /** 采购单 申请人 */
    private String orderMan;

    @Override
    public String toString() {
        return "DrugOrder{" +
                "orderId=" + orderId +
                ", orderSupId=" + orderSupId +
                ", orderTotal=" + orderTotal +
                ", orderMan='" + orderMan + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DrugOrder drugOrder = (DrugOrder) o;
        return Objects.equals(orderId, drugOrder.orderId) &&
                Objects.equals(orderSupId, drugOrder.orderSupId) &&
                Objects.equals(orderTotal, drugOrder.orderTotal) &&
                Objects.equals(orderMan, drugOrder.orderMan);
    }

    @Override
    public int hashCode() {
        return Objects.hash(orderId, orderSupId, orderTotal, orderMan);
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getOrderSupId() {
        return orderSupId;
    }

    public void setOrderSupId(Integer orderSupId) {
        this.orderSupId = orderSupId;
    }

    public Double getOrderTotal() {
        return orderTotal;
    }

    public void setOrderTotal(Double orderTotal) {
        this.orderTotal = orderTotal;
    }

    public String getOrderMan() {
        return orderMan;
    }

    public void setOrderMan(String orderMan) {
        this.orderMan = orderMan;
    }
}
