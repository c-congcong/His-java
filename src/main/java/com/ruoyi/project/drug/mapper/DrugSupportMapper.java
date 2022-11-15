package com.ruoyi.project.drug.mapper;

import com.ruoyi.project.drug.domain.DrugSupport;

import java.util.List;

/**
 * 供应商数据访问
 */
public interface DrugSupportMapper {
    /**
     * 查询所有供应商
     * @return
     */
    List<DrugSupport> selectAll();
}
