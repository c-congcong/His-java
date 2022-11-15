package com.ruoyi.project.drug.service;

import com.ruoyi.project.drug.domain.DrugProducer;

import java.util.List;

/**
 * 生产厂家服务接口
 * @author 小吴同学
 */
public interface IDrugProducerService {
    /**
     * 查询全部生产厂家
     * @return
     */
    List<DrugProducer> selectAll();
}
