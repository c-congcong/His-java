package com.ruoyi.project.his.service;

import com.ruoyi.project.his.domain.HisDept;
import com.ruoyi.project.system.domain.SysDept;

import java.util.List;

/**
 * @author 小吴同学
 */
public interface IHisDeptService {

    /**
     * 查询科室列表
     * @param dept
     * @return
     */
    public List<HisDept> selectDeptList(HisDept dept);

    /**
     * 新增保存科室信息
     *
     * @param dept 科室信息
     * @return 结果
     */
    public int insertDept(HisDept dept);

    /**
     * 校验岗位名称
     *
     * @param dept 岗位信息
     * @return 结果
     */
    public String checkDeptNameUnique(HisDept dept);

    /**
     * 校验岗位编码
     *
     * @param dept 岗位信息
     * @return 结果
     */
    public String checkDeptCodeUnique(HisDept dept);

    /**
     * 通过岗位ID查询岗位信息
     *
     * @param deptId 岗位ID
     * @return 角色对象信息
     */
    public HisDept selectDeptById(Long deptId);

    /**
     * 根据用户ID获取岗位选择框列表
     *
     * @param userId 用户ID
     * @return 选中岗位ID列表
     */
//    public List<Integer> selectDeptListByUserId(Long userId);

    /**
     * 通过岗位ID查询岗位使用数量
     *
     * @param deptId 岗位ID
     * @return 结果
     */
    public int countUserDeptById(Long deptId);

    /**
     * 删除岗位信息
     *
     * @param deptId 岗位ID
     * @return 结果
     */
    public int deleteDeptById(Long deptId);

    /**
     * 批量删除岗位信息
     *
     * @param deptIds 需要删除的岗位ID
     * @return 结果
     * @throws Exception 异常
     */
    public int deleteDeptByIds(Long[] deptIds);

    /**
     * 修改保存岗位信息
     *
     * @param dept 岗位信息
     * @return 结果
     */
    public int updateDept(HisDept dept);

}
