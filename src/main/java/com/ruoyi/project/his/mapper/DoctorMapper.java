package com.ruoyi.project.his.mapper;

import com.ruoyi.project.his.domain.Doctor;

import java.util.List;

/**
 * 医生数据访问接口
 * @author 小吴同学
 */
public interface DoctorMapper {
    /**
     * 根据科室主键查询医生集合。
     * @param deptId
     * @return
     */
    List<Doctor> selectDoctorsByDeptId(Integer deptId);
}
