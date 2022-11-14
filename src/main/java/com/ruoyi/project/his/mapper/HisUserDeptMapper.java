package com.ruoyi.project.his.mapper;

import com.ruoyi.project.his.domain.HisUserDept;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 用户与科室关联表 数据层
 * 
 * @author ruoyi
 */
@Mapper
public interface HisUserDeptMapper
{
    /**
     * 通过用户ID删除用户和科室关联
     * 
     * @param userId 用户ID
     * @return 结果
     */
    public int deleteUserDeptByUserId(Long userId);

    /**
     * 通过科室ID查询科室使用数量
     * 
     * @param deptId 科室ID
     * @return 结果
     */
    public int countUserDeptById(Long deptId);

    /**
     * 批量删除用户和科室关联
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteUserDept(Long[] ids);

    /**
     * 批量新增用户科室信息
     * 
     * @param userDeptList 用户角色列表
     * @return 结果
     */
    public int batchUserDept(List<HisUserDept> userDeptList);
}
