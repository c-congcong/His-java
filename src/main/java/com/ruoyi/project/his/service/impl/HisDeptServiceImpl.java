package com.ruoyi.project.his.service.impl;

import com.ruoyi.common.constant.UserConstants;
import com.ruoyi.common.exception.CustomException;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.project.his.domain.HisDept;
import com.ruoyi.project.his.mapper.HisDeptMapper;
import com.ruoyi.project.his.mapper.HisUserDeptMapper;
import com.ruoyi.project.his.service.IHisDeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 小吴同学
 */
@Service
public class HisDeptServiceImpl implements IHisDeptService {

    @Autowired
    private HisDeptMapper hisDeptMapper;

    @Autowired
    private HisUserDeptMapper hisUserDeptMapper;
    
    @Override
    public List<HisDept> selectDeptList(HisDept dept) {
        return hisDeptMapper.selectDeptList(dept);
    }

    @Override
    public int insertDept(HisDept dept) {
        return hisDeptMapper.insertDept(dept);
    }

    /**
     * 校验科室名称是否唯一
     *
     * @param dept 科室信息
     * @return 结果
     */
    @Override
    public String checkDeptNameUnique(HisDept dept)
    {
        Long deptId = StringUtils.isNull(dept.getDeptId()) ? -1L : dept.getDeptId();
        HisDept info = hisDeptMapper.checkDeptNameUnique(dept.getDeptName());
        if (StringUtils.isNotNull(info) && info.getDeptId().longValue() != deptId.longValue())
        {
            return UserConstants.NOT_UNIQUE;
        }
        return UserConstants.UNIQUE;
    }

    /**
     * 校验科室编码是否唯一
     *
     * @param dept 科室信息
     * @return 结果
     */
    @Override
    public String checkDeptCodeUnique(HisDept dept)
    {
        Long deptId = StringUtils.isNull(dept.getDeptId()) ? -1L : dept.getDeptId();
        HisDept info = hisDeptMapper.checkDeptCodeUnique(dept.getDeptCode());
        if (StringUtils.isNotNull(info) && info.getDeptId().longValue() != deptId.longValue())
        {
            return UserConstants.NOT_UNIQUE;
        }
        return UserConstants.UNIQUE;
    }

    /**
     * 通过科室ID查询科室信息
     *
     * @param deptId 科室ID
     * @return 角色对象信息
     */
    @Override
    public HisDept selectDeptById(Long deptId)
    {
        return hisDeptMapper.selectDeptById(deptId);
    }

    /**
     * 根据用户ID获取岗位选择框列表
     *
     * @param userId 用户ID
     * @return 选中岗位ID列表
     */
//    @Override
//    public List<Integer> selectDeptListByUserId(Long userId)
//    {
//        return hisDeptMapper.selectDeptListByUserId(userId);
//    }

    /**
     * 通过岗位ID查询岗位使用数量
     *
     * @param deptId 岗位ID
     * @return 结果
     */
    @Override
    public int countUserDeptById(Long deptId)
    {
        return hisUserDeptMapper.countUserDeptById(deptId);
    }

    /**
     * 删除岗位信息
     *
     * @param deptId 岗位ID
     * @return 结果
     */
    @Override
    public int deleteDeptById(Long deptId)
    {
        return hisDeptMapper.deleteDeptById(deptId);
    }

    /**
     * 批量删除岗位信息
     *
     * @param deptIds 需要删除的岗位ID
     * @return 结果
     * @throws Exception 异常
     */
    @Override
    public int deleteDeptByIds(Long[] deptIds)
    {
        for (Long deptId : deptIds)
        {
            HisDept dept = selectDeptById(deptId);
//            if (countUserDeptById(deptId) > 0)
//            {
//                throw new CustomException(String.format("%1$s已分配,不能删除", dept.getDeptName()));
//            }
        }
        return hisDeptMapper.deleteDeptByIds(deptIds);
    }

    /**
     * 修改保存岗位信息
     *
     * @param dept 岗位信息
     * @return 结果
     */
    @Override
    public int updateDept(HisDept dept)
    {
        return hisDeptMapper.updateDept(dept);
    }

}
