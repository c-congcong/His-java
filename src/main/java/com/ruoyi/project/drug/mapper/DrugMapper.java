package com.ruoyi.project.drug.mapper;

import com.ruoyi.project.drug.domain.Drug;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 药品数据访问接口
 */
public interface DrugMapper {
    /**
     * 根据供应商主键，分页查询药品
     * @param supportId
     * @return
     */
    List<Drug> selectBySupportId(Integer supportId);

    /**
     * 批量删除药品信息
     * @param drugIds
     * @return
     */
    int batchDelete(@Param("drugIds") Integer[] drugIds);

    /**
     * 修改药品信息
     * @param drug
     * @return
     */
    int updateById(Drug drug);

    /**
     * 根据主键查询药品
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
     * 分页查询 、 条件查询药品数据。
     * @param drug
     * @return
     */
    List<Drug> selectList(Drug drug);
}
