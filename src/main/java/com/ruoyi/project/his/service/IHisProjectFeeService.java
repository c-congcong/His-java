package com.ruoyi.project.his.service;

import com.ruoyi.project.his.domain.HisProjectFee;

import java.util.List;

/**
 * 检查费用服务接口
 * @author 小吴同学
 */
public interface IHisProjectFeeService {
    /**
     * 分页查询检查费用
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
     * 更新检查费用
     * @param projectFee
     * @return
     */
    int updateProjectFee(HisProjectFee projectFee);

    /**
     * 根据主键查询检查费用
     * @param projectId
     * @return
     */
    HisProjectFee selectByProjectId(Integer projectId);

    /**
     * 根据主键批量删除检查费用
     * @param projectIds
     * @return
     */
    int batchDeleteByProjectIds(Integer[] projectIds);
}
