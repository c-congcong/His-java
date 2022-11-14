package com.ruoyi.project.his.mapper;

import com.ruoyi.project.his.domain.HisDept;
import com.ruoyi.project.system.domain.SysPost;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 科室信息 数据层
 *
 * @author 小吴同学
 */
@Mapper
public interface HisDeptMapper {
    /**
     * 查询科室数据集合
     *
     * @param dept 科室信息
     * @return 科室数据集合
     */
    List<HisDept> selectDeptList(HisDept dept);

    /**
     * 新增科室信息
     *
     * @param dept 科室信息
     * @return 结果
     */
    int insertDept(HisDept dept);


    /**
     * 校验科室名称
     *
     * @param deptName 科室名称
     * @return 结果
     */
    HisDept checkDeptNameUnique(String deptName);

    /**
     * 校验科室编码
     *
     * @param deptCode 科室编码
     * @return 结果
     */
    HisDept checkDeptCodeUnique(String deptCode);

    /**
     * 通过岗位ID查询岗位信息
     *
     * @param deptId 岗位ID
     * @return 角色对象信息
     */
    public HisDept selectDeptById(Long deptId);

    /**
     * 根据用户ID获取科室选择框列表
     *
     * @param userId 用户ID
     * @return 选中科室ID列表
     */
    List<Integer> selectDeptListByUserId(Long userId);

    /**
     * 修改科室信息
     *
     * @param dept 科室信息
     * @return 结果
     */
    int updateDept(HisDept dept);



    /**
     * 查询用户所属科室组
     *
     * @param userName 用户名
     * @return 结果
     */
//    public List<HisDept> selectDeptsByUserName(String userName);

    /**
     * 删除科室信息
     *
     * @param deptId 科室ID
     * @return 结果
     */
    public int deleteDeptById(Long deptId);

    /**
     * 批量删除科室信息
     *
     * @param deptIds 需要删除的科室ID
     * @return 结果
     */
    public int deleteDeptByIds(Long[] deptIds);




}
