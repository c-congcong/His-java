package com.ruoyi.project.drug.service;

import com.ruoyi.project.drug.domain.Drug;

import java.util.List;

/**
 * 药品服务接口
 * @author 小吴同学
 */
public interface IDrugService {
    /**
     * 根据供应商主键，分页查询药品
     * @param supportId
     * @return
     */
    List<Drug> selectBySupportId(Integer supportId);

    /**
     * 根据主键批量删除药品信息
     * @param drugIds
     * @return
     */
    int batchDelete(Integer[] drugIds);

    /**
     * 修改药品信息
     * @param drug
     * @return
     */
    int updateById(Drug drug);

    /**
     * 根据主键查询药品信息。
     * @param durgId
     * @return
     */
    Drug selectById(Integer durgId);

    /**
     * 新增药品
     * @param drug
     * @return
     */
    int insertDrug(Drug drug);

    /**
     * 条件分页查询药品信息。
     * @param drug
     * @return
     */
    List<Drug> selectList(Drug drug);
}
