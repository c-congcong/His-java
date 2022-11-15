package com.ruoyi.project.drug.controller;

import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.project.drug.domain.DrugProducer;
import com.ruoyi.project.drug.service.IDrugProducerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author 小吴同学
 */
@RestController
@RequestMapping("/drugs/producer")
public class DrugProducerController extends BaseController {
    @Autowired
    private IDrugProducerService drugProducerService;

    /**
     * 查询全部生产厂家
     * @return
     */
    @GetMapping("/all")
    @PreAuthorize("@ss.hasPermi('drugs:producer:all')")
    public AjaxResult getAll(){
        return AjaxResult.success(drugProducerService.selectAll());
    }
}
