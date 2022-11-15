package com.ruoyi.project.drug.mapper;

import com.ruoyi.project.drug.domain.DrugProducer;

import java.util.List;

/**
 * 生产厂家数据访问接口
 */
public interface DrugProducerMapper {
    /**
     * 查询全部生产厂家
     * @return
     */
    List<DrugProducer> selectAll();
}
