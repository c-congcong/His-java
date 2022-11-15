package com.ruoyi.project.drug.service.impl;

import com.ruoyi.project.drug.domain.Drug;
import com.ruoyi.project.drug.mapper.DrugMapper;
import com.ruoyi.project.drug.service.IDrugService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 药品服务实现类
 * @author 小吴同学
 */
@Service
public class DrugServiceImpl implements IDrugService {
    @Autowired
    private DrugMapper drugMapper;

    @Override
    public List<Drug> selectBySupportId(Integer supportId) {
        return drugMapper.selectBySupportId(supportId);
    }

    /**
     * 根据主键批量删除药品信息
     * @param drugIds
     * @return
     */
    @Override
    public int batchDelete(Integer[] drugIds) {
        return drugMapper.batchDelete(drugIds);
    }

    /**
     * 修改药品信息
     * @param drug
     * @return
     */
    @Override
    public int updateById(Drug drug) {
        return drugMapper.updateById(drug);
    }

    /**
     * 根据主键查询药品信息
     * @param durgId
     * @return
     */
    @Override
    public Drug selectById(Integer durgId) {
        return drugMapper.selectById(durgId);
    }

    /**
     * 新增药品
     * @param drug
     * @return
     */
    @Override
    public int insertDrug(Drug drug) {
        return drugMapper.insertDrug(drug);
    }

    /**
     * 分页查询
     * @param drug
     * @return
     */
    @Override
    public List<Drug> selectList(Drug drug) {
        return drugMapper.selectList(drug);
    }
}
