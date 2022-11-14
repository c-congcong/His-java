package com.ruoyi.project.his.service.impl;

import com.ruoyi.project.his.domain.HisProjectFee;
import com.ruoyi.project.his.mapper.HisProjectFeeMapper;
import com.ruoyi.project.his.service.IHisProjectFeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 小吴同学
 */
@Service
public class HisProjectFeeServiceImpl implements IHisProjectFeeService {
    @Autowired
    private HisProjectFeeMapper projectFeeMapper;

    /**
     * 分页查询检查费用
     * @param projectFee
     * @return
     */
    @Override
    public List<HisProjectFee> selectProjectFeeByParams(HisProjectFee projectFee) {
        return projectFeeMapper.selectProjectFeeByParams(projectFee);
    }

    /**
     * 新增检查费用
     * @param projectFee
     * @return
     */
    @Override
    public int insertProjectFee(HisProjectFee projectFee) {
        return projectFeeMapper.insertProjectFee(projectFee);
    }

    /**
     * 更新检查费用
     * @param projectFee
     * @return
     */
    @Override
    public int updateProjectFee(HisProjectFee projectFee) {
        return projectFeeMapper.updateByProjectId(projectFee);
    }

    /**
     * 根据主键查询检查费用
     * @param projectId
     * @return
     */
    @Override
    public HisProjectFee selectByProjectId(Integer projectId) {
        return projectFeeMapper.selectByProjectId(projectId);
    }

    /**
     * 批量删除检查费用
     * @param projectIds
     * @return
     */
    @Override
    public int batchDeleteByProjectIds(Integer[] projectIds) {
        return projectFeeMapper.batchDeleteByProjectIds(projectIds);
    }
}
