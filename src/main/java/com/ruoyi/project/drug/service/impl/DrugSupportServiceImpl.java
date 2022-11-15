package com.ruoyi.project.drug.service.impl;

import com.ruoyi.project.drug.domain.DrugSupport;
import com.ruoyi.project.drug.mapper.DrugSupportMapper;
import com.ruoyi.project.drug.service.IDrugSupportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 供应商服务实现
 * @author 小吴同学
 */
@Service
public class DrugSupportServiceImpl implements IDrugSupportService {
    @Autowired
    private DrugSupportMapper drugSupportMapper;

    /**
     * 查询全部供应商
     * @return
     */
    @Override
    public List<DrugSupport> selectAll() {
        return drugSupportMapper.selectAll();
    }
}
