package com.ruoyi.project.drug.service;

import com.ruoyi.project.drug.domain.DrugOrderDetail;
import com.ruoyi.project.drug.domain.DrugsOrderAndOthers;

import java.util.List;

/**
 * @author 小吴同学
 */
public interface IDrugsOrderAndOthersService {

    /**
     * 批量提交入库
     * @param detailIds
     * @param detailOperator 入库操作人名字， 登录用户的名字
     * @return
     */
    int submitStorage(Integer[] detailIds, String detailOperator);

    /**
     * 批量提交作废。更新对应的采购单据明细状态为 作废（5）
     * @param detailIds
     * @return
     */
    int submitCancel(Integer[] detailIds);

    /**
     * 批量提交审核。更新对应的采购单据明细状态为 待审核（1）
     * @param detailIds
     * @return
     */
    int submitExamine(Integer[] detailIds);

    /**
     * 新增采购单据
     * @param supportId 供应商主键
     * @param createBy 登录用户名字
     * @param orderDetails 采购单据明细集合
     * @return
     */
    int insertDrugOrderAndDetails(Integer supportId, Double orderTotal, String createBy, List<DrugOrderDetail> orderDetails);

    /**
     * 条件分页查询采购入库单
     * @param orderAndOthers
     * @return
     */
    List<DrugsOrderAndOthers> selectList(DrugsOrderAndOthers orderAndOthers);
}
