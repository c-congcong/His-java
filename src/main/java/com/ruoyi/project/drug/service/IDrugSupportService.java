package com.ruoyi.project.drug.service;

import com.ruoyi.project.drug.domain.DrugSupport;

import java.util.List;

/**
 * 供应商服务接口
 */
public interface IDrugSupportService {
    /**
     * 查询全部供应商
     * @return
     */
    List<DrugSupport> selectAll();
}
