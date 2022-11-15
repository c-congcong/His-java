package com.ruoyi.project.drug.service.impl;

import com.ruoyi.project.drug.domain.DrugOrder;
import com.ruoyi.project.drug.domain.DrugOrderDetail;
import com.ruoyi.project.drug.domain.DrugsOrderAndOthers;
import com.ruoyi.project.drug.mapper.DrugsOrderAndOthersMapper;
import com.ruoyi.project.drug.service.IDrugsOrderAndOthersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 采购入库单管理 服务实现类型
 * @author 小吴同学
 */
@Service
public class DrugsOrderAndOthersServiceImpl implements IDrugsOrderAndOthersService {
    @Autowired
    private DrugsOrderAndOthersMapper orderAndOthersMapper;

    /**
     * 批量提交入库。更新对应的采购单据明细状态为 已入库（4）
     * @param detailIds
     * @param detailOperator 入库操作人名字， 登录用户的名字
     * @return
     */
    @Override
    public int submitStorage(Integer[] detailIds, String detailOperator) {
        int rows = 0;
        for(Integer detailId : detailIds){
            // 创建要修改的对象
            DrugOrderDetail orderDetail = new DrugOrderDetail();
            orderDetail.setDetailId(detailId);
            orderDetail.setDetailStatus(4);
            // 入库操作人
            orderDetail.setDetailOperator(detailOperator);
            // 入库时间，就是系统当前时间。
            orderDetail.setDetailDate(new Date());
            // 更新
            rows += orderAndOthersMapper.updateDrugOrderDetail(orderDetail);
        }
        return rows;
    }

    /**
     * 批量提交作废。更新对应的采购单据明细状态为 作废（5）
     * @param detailIds
     * @return
     */
    @Override
    public int submitCancel(Integer[] detailIds) {
        int rows = 0;
        for(Integer detailId : detailIds){
            // 创建要修改状态的采购单据明细对象
            DrugOrderDetail orderDetail = new DrugOrderDetail();
            orderDetail.setDetailId(detailId);
            orderDetail.setDetailStatus(5);
            // 修改数据
            rows += orderAndOthersMapper.updateDrugOrderDetail(orderDetail);
        }
        return rows;
    }

    /**
     * 批量提交审核。更新对应的采购单据明细状态为 待审核（1）
     * @param detailIds
     * @return
     */
    @Override
    public int submitExamine(Integer[] detailIds) {
        int rows = 0;
        for (Integer detailId : detailIds){
            DrugOrderDetail orderDetail = new DrugOrderDetail();
            orderDetail.setDetailId(detailId);
            orderDetail.setDetailStatus(1);
            // 更新
            rows += orderAndOthersMapper.updateDrugOrderDetail(orderDetail);
        }

        return rows;
    }

    /**
     * 新增采购单据
     * @param supportId 供应商主键
     * @param createBy 登录用户名字
     * @param orderDetails 采购单据明细集合
     * @return
     */
    @Override
    public int insertDrugOrderAndDetails(Integer supportId, Double orderTotal, String createBy, List<DrugOrderDetail> orderDetails) {
        // 创建采购单据对象
        DrugOrder order = new DrugOrder();
        order.setOrderMan(createBy);
        order.setOrderSupId(supportId);
        order.setOrderTotal(orderTotal);
        order.setCreateBy(createBy);

        // 新增采购单据
        orderAndOthersMapper.insertDrugOrder(order);

        // 循环新增采购单据明细
        for(DrugOrderDetail drugOrderDetail : orderDetails){
            // 把订单主键设置到明细的外键字段中
            drugOrderDetail.setOrderId(order.getOrderId());
            // 新增到数据库
            orderAndOthersMapper.insertDrugOrderDetail(drugOrderDetail);
        }

        return 1;
    }

    /**
     * 条件分页查询
     * @param orderAndOthers
     * @return
     */
    @Override
    public List<DrugsOrderAndOthers> selectList(DrugsOrderAndOthers orderAndOthers) {
        return orderAndOthersMapper.selectList(orderAndOthers);
    }
}
