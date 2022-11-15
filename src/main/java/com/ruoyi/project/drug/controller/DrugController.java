package com.ruoyi.project.drug.controller;

import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.drug.domain.Drug;
import com.ruoyi.project.drug.service.IDrugService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * 药品信息维护 控制器
 */
@RestController
@RequestMapping("/drugs/drug")
public class DrugController extends BaseController {
    @Autowired
    private IDrugService drugService;

    /**
     * 根据供应商主键，分页查询药品信息
     * @param supportId
     * @return
     */
    @GetMapping("/bySupport/{supportId}")
    @PreAuthorize("@ss.hasPermi('drugs:drug:query')")
    public TableDataInfo getBySupportId(@PathVariable Integer supportId){
        startPage();
        return getDataTable(drugService.selectBySupportId(supportId));
    }

    /**
     * 新增药品信息
     * @param drug
     * @return
     */
    @PostMapping
    @PreAuthorize("@ss.hasPermi('drugs:drug:add')")
    @Log(title = "药品信息管理", businessType = BusinessType.INSERT)
    public AjaxResult addDrug(@Validated @RequestBody Drug drug){
        drug.setCreateBy(SecurityUtils.getUsername()); // 设置创建人名字
        return toAjax(drugService.insertDrug(drug));
    }

    /**
     * 批量删除药品信息
     * @param drugIds
     * @return
     */
    @DeleteMapping("/{drugIds}")
    @PreAuthorize("@ss.hasPermi('drugs:drug:remove')")
    @Log(title = "药品信息管理", businessType = BusinessType.DELETE)
    public AjaxResult removeDrugs(@PathVariable Integer[] drugIds){
        return toAjax(drugService.batchDelete(drugIds));
    }

    /**
     * 修改药品信息
     * @param drug
     * @return
     */
    @PutMapping
    @PreAuthorize("@ss.hasPermi('drugs:drug:modify')")
    @Log(title = "药品信息管理", businessType = BusinessType.UPDATE)
    public AjaxResult modifyDrug(@Validated @RequestBody Drug drug){
        drug.setUpdateBy(SecurityUtils.getUsername()); // 设置修改人姓名
        return toAjax(drugService.updateById(drug));
    }

    /**
     * 根据主键查询药品信息
     * @param durgId
     * @return
     */
    @GetMapping("/{durgId}")
    @PreAuthorize("@ss.hasPermi('drugs:drug:query')")
    public AjaxResult getInfo(@PathVariable Integer durgId){
        return AjaxResult.success(drugService.selectById(durgId));
    }

    /**
     * 分页查询药品信息
     * @param drug
     * @return
     */
    @GetMapping("/list")
    @PreAuthorize("@ss.hasPermi('drugs:drug:list')")
    public TableDataInfo getDrugList(Drug drug){
        // 分页
        startPage();
        // 查询并返回
        return getDataTable(drugService.selectList(drug));
    }
}
