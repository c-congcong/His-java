package com.ruoyi.project.drug.mapper;

import com.ruoyi.project.drug.domain.DrugOrder;
import com.ruoyi.project.drug.domain.DrugOrderDetail;
import com.ruoyi.project.drug.domain.DrugsOrderAndOthers;

import java.util.List;

/**
 * 采购入库相关数据访问接口
 */
public interface DrugsOrderAndOthersMapper {

    /**
     * 修改采购单据明细
     * @param orderDetail
     * @return
     */
    int updateDrugOrderDetail(DrugOrderDetail orderDetail);

    /**
     * 条件分页查询
     * @param orderAndOthers
     * @return
     */
    List<DrugsOrderAndOthers> selectList(DrugsOrderAndOthers orderAndOthers);

    /**
     * 新增采购单据
     * @param drugOrder
     * @return
     */
    int insertDrugOrder(DrugOrder drugOrder);

    /**
     * 新增采购单据明细
     * @param drugOrderDetail
     * @return
     */
    int insertDrugOrderDetail(DrugOrderDetail drugOrderDetail);
}
