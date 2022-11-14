package com.ruoyi.project.his.domain;

import com.ruoyi.framework.web.domain.BaseEntity;

import java.util.Objects;

/**
 * 科室实体类
 * @author 小吴同学
 */
public class HisDept extends BaseEntity {

    private static final long serialVersionUID = 1L;
    /** 科室主键 */
    private Integer deptId;
    /** 科室名 */
    private String deptName;
    /** 科室编码 */
    private String deptCode;
    /** 挂号量 */
    private Long deptNum;
    /** 负责人 */
    private String deptLeader;
    /** 联系电话 */
    private String deptPhone;
    /** 状态。 */
    private String status;

    @Override
    public String toString() {
        return "HisDept{" +
                "deptId=" + deptId +
                ", deptName='" + deptName + '\'' +
                ", deptCode='" + deptCode + '\'' +
                ", deptNum=" + deptNum +
                ", deptLeader='" + deptLeader + '\'' +
                ", deptPhone='" + deptPhone + '\'' +
                ", status='" + status + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        HisDept that = (HisDept) o;
        return Objects.equals(deptId, that.deptId) &&
                Objects.equals(deptName, that.deptName) &&
                Objects.equals(deptCode, that.deptCode) &&
                Objects.equals(deptNum, that.deptNum) &&
                Objects.equals(deptLeader, that.deptLeader) &&
                Objects.equals(deptPhone, that.deptPhone) &&
                Objects.equals(status, that.status);
    }

    @Override
    public int hashCode() {
        return Objects.hash(deptId, deptName, deptCode, deptNum, deptLeader, deptPhone, status);
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getDeptCode() {
        return deptCode;
    }

    public void setDeptCode(String deptCode) {
        this.deptCode = deptCode;
    }

    public Long getDeptNum() {
        return deptNum;
    }

    public void setDeptNum(Long deptNum) {
        this.deptNum = deptNum;
    }

    public String getDeptLeader() {
        return deptLeader;
    }

    public void setDeptLeader(String deptLeader) {
        this.deptLeader = deptLeader;
    }

    public String getDeptPhone() {
        return deptPhone;
    }

    public void setDeptPhone(String deptPhone) {
        this.deptPhone = deptPhone;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
