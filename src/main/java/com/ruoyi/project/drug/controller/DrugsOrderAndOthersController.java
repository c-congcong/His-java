package com.ruoyi.project.drug.controller;

import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.drug.domain.DrugOrderDetail;
import com.ruoyi.project.drug.domain.DrugsOrderAndOthers;
import com.ruoyi.project.drug.service.IDrugsOrderAndOthersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author 小吴同学
 */
@RestController
@RequestMapping("/drugs/order")
public class DrugsOrderAndOthersController extends BaseController {
    @Autowired
    private IDrugsOrderAndOthersService orderAndOthersService;

    /**
     * 批量申请入库
     * @param detailIds id列表
     * @return
     */
    @PutMapping("/submitStorage/{detailIds}")
    public AjaxResult submitStorage(@PathVariable Integer[] detailIds){
        return toAjax(orderAndOthersService.submitStorage(detailIds, SecurityUtils.getUsername()));
    }

    /**
     * 批量作废
     * @param detailIds id列表
     * @return
     */
    @PutMapping("/submitCancel/{detailIds}")
    @PreAuthorize("@ss.hasPermi('drugs:order:cancel')")
    @Log(title = "采购单据管理", businessType = BusinessType.UPDATE)
    public AjaxResult submitCancel(@PathVariable Integer[] detailIds){
        return toAjax(orderAndOthersService.submitCancel(detailIds));
    }

    /**
     * 批量提交审核
     * @param detailIds id列表
     * @return
     */
    @PutMapping("/submitExamine/{detailIds}")
    @PreAuthorize("@ss.hasPermi('drugs:order:examine')")
    @Log(title = "采购单据管理", businessType = BusinessType.UPDATE)
    public AjaxResult submitExamine(@PathVariable Integer[] detailIds){
        return toAjax(orderAndOthersService.submitExamine(detailIds));
    }

    /**
     * 新增采购单据
     * @param supportId 供应商主键
     * @param orderTotal 单据总额
     * @param drugOrderDetails 明细集合
     * @return
     */
    @PostMapping("/{supportId}/{orderTotal}")
    @PreAuthorize("@ss.hasPermi('drugs:order:add')")
    @Log(title = "采购单据管理", businessType = BusinessType.INSERT)
    public AjaxResult addDrugOrder(@PathVariable Integer supportId, @PathVariable Double orderTotal,
                                   @RequestBody List<DrugOrderDetail> drugOrderDetails){
        return toAjax(orderAndOthersService
                .insertDrugOrderAndDetails(supportId, orderTotal, SecurityUtils.getUsername(), drugOrderDetails));
    }

    /**
     * 条件分页查询采购入库单据
     * @param orderAndOthers
     * @return
     */
    @GetMapping("/list")
    @PreAuthorize("@ss.hasPermi('drugs:order:list')")
    public TableDataInfo listDrugsOrderAndOthers(DrugsOrderAndOthers orderAndOthers){
        startPage(); // 分页
        return getDataTable(orderAndOthersService.selectList(orderAndOthers));
    }
}
