package com.ruoyi.project.his.mapper;

import com.ruoyi.project.his.domain.HisProjectFee;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 检查费用数据访问接口
 * @author 小吴同学
 */
@Mapper
public interface HisProjectFeeMapper {
    /**
     * 根据条件分页查询检查费用
     * @param projectFee
     * @return
     */
    List<HisProjectFee> selectProjectFeeByParams(HisProjectFee projectFee);

    /**
     * 新增检查费用
     * @param projectFee
     * @return
     */
    int insertProjectFee(HisProjectFee projectFee);

    /**
     * 根据主键查询检查费用
     * @param projectId
     * @return
     */
    HisProjectFee selectByProjectId(Integer projectId);

    /**
     * 更新
     * @param projectFee
     * @return
     */
    int updateByProjectId(HisProjectFee projectFee);

    /**
     * 批量删除
     * @param projectIds
     * @return
     */
    int batchDeleteByProjectIds(@Param("projectIds") Integer[] projectIds);
}
