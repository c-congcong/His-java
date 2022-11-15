package com.ruoyi.project.drug.service.impl;

import com.ruoyi.project.drug.domain.DrugProducer;
import com.ruoyi.project.drug.mapper.DrugProducerMapper;
import com.ruoyi.project.drug.service.IDrugProducerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 生产厂家服务实现类型
 * @author 小吴同学
 */
@Service
public class DrugProducerServiceImpl implements IDrugProducerService {
    @Autowired
    private DrugProducerMapper drugProducerMapper;

    /**
     * 查询全部生产厂家
     * @return
     */
    @Override
    public List<DrugProducer> selectAll() {
        return drugProducerMapper.selectAll();
    }
}
