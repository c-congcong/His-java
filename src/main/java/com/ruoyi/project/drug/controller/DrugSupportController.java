package com.ruoyi.project.drug.controller;

import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.project.drug.service.IDrugSupportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 供应商控制器
 * @author 小吴同学
 */
@RestController
@RequestMapping("/drugs/support")
public class DrugSupportController {
    @Autowired
    private IDrugSupportService drugSupportService;

    /**
     * 查询全部供应商
     * @return
     */
    @GetMapping("/all")
    @PreAuthorize("@ss.hasPermi('drugs:support:all')")
    public AjaxResult getAll(){
        return AjaxResult.success(drugSupportService.selectAll());
    }
}
