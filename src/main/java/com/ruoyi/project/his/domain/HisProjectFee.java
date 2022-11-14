package com.ruoyi.project.his.domain;

import com.ruoyi.framework.web.domain.BaseEntity;

import java.util.Objects;

/**
 * 检查费用实体
 * @author 小吴同学
 */
public class HisProjectFee extends BaseEntity {
    private static final long serialVersionUID = 1L;
    /** 检查项目主键 */
    private Integer projectId;
    /** 检查项目名称 */
    private String projectName;
    /** 关键字 */
    private String keyword;
    /** 检查费用 */
    private Double projectUnitprice;
    /** 费用成本 */
    private Double projectCost;
    /** 项目单位 */
    private String projectTimes;
    /** 项目类型 */
    private String projectType;
    /** 所属科室外键 */
    private Integer projectDeptId;
    /** 状态 */
    private String status;
    /** 扩展字段1。开发的时候觉得应该还有字段没有分析出来，但是又不知道是什么字段，所以预留的扩展字段。也叫预留字段 */
    private String ext01;
    /** 扩展字段2 */
    private String ext02;

    @Override
    public String toString() {
        return "HisProjectFee{" +
                "projectId=" + projectId +
                ", projectName='" + projectName + '\'' +
                ", keyword='" + keyword + '\'' +
                ", projectUnitprice=" + projectUnitprice +
                ", projectCost=" + projectCost +
                ", projectTimes='" + projectTimes + '\'' +
                ", projectType='" + projectType + '\'' +
                ", projectDeptId=" + projectDeptId +
                ", status='" + status + '\'' +
                ", ext01='" + ext01 + '\'' +
                ", ext02='" + ext02 + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        HisProjectFee that = (HisProjectFee) o;
        return Objects.equals(projectId, that.projectId) &&
                Objects.equals(projectName, that.projectName) &&
                Objects.equals(keyword, that.keyword) &&
                Objects.equals(projectUnitprice, that.projectUnitprice) &&
                Objects.equals(projectCost, that.projectCost) &&
                Objects.equals(projectTimes, that.projectTimes) &&
                Objects.equals(projectType, that.projectType) &&
                Objects.equals(projectDeptId, that.projectDeptId) &&
                Objects.equals(status, that.status) &&
                Objects.equals(ext01, that.ext01) &&
                Objects.equals(ext02, that.ext02);
    }

    @Override
    public int hashCode() {
        return Objects.hash(projectId, projectName, keyword, projectUnitprice, projectCost, projectTimes, projectType, projectDeptId, status, ext01, ext02);
    }

    public Integer getProjectId() {
        return projectId;
    }

    public void setProjectId(Integer projectId) {
        this.projectId = projectId;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public Double getProjectUnitprice() {
        return projectUnitprice;
    }

    public void setProjectUnitprice(Double projectUnitprice) {
        this.projectUnitprice = projectUnitprice;
    }

    public Double getProjectCost() {
        return projectCost;
    }

    public void setProjectCost(Double projectCost) {
        this.projectCost = projectCost;
    }

    public String getProjectTimes() {
        return projectTimes;
    }

    public void setProjectTimes(String projectTimes) {
        this.projectTimes = projectTimes;
    }

    public String getProjectType() {
        return projectType;
    }

    public void setProjectType(String projectType) {
        this.projectType = projectType;
    }

    public Integer getProjectDeptId() {
        return projectDeptId;
    }

    public void setProjectDeptId(Integer projectDeptId) {
        this.projectDeptId = projectDeptId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getExt01() {
        return ext01;
    }

    public void setExt01(String ext01) {
        this.ext01 = ext01;
    }

    public String getExt02() {
        return ext02;
    }

    public void setExt02(String ext02) {
        this.ext02 = ext02;
    }
}
