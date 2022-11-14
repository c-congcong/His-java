package com.ruoyi.project.his.controller;

import com.ruoyi.common.constant.UserConstants;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.his.domain.HisDept;
import com.ruoyi.project.his.service.IHisDeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author 小吴同学
 */
@RestController
@RequestMapping("/his/dept")
public class HisDeptController extends BaseController {

    @Autowired
    private IHisDeptService DeptService;

    /**
     * 获取科室列表  及标题查询
     */
    @PreAuthorize("@ss.hasPermi('his:dept:list')")
    @GetMapping("/list")
    public TableDataInfo list(HisDept hisDept){

        startPage();
        List<HisDept> list = DeptService.selectDeptList(hisDept);
        return getDataTable(list);
    }

    /**
     * 根据岗位编号获取详细信息
     */
    @PreAuthorize("@ss.hasPermi('his:dept:query')")
    @GetMapping(value = "/{deptId}")
    public AjaxResult getInfo(@PathVariable Long deptId)
    {
        return AjaxResult.success(DeptService.selectDeptById(deptId));
    }



    /**
     * 添加岗位
     */
    @PreAuthorize("@ss.hasPermi('his:dept:add')")
    @Log(title = "科室管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@Validated @RequestBody HisDept dept)
    {
        if (UserConstants.NOT_UNIQUE.equals(DeptService.checkDeptNameUnique(dept)))
        {
            return AjaxResult.error("新增科室'" + dept.getDeptName() + "'失败，科室名称已存在");
        }
        else if (UserConstants.NOT_UNIQUE.equals(DeptService.checkDeptCodeUnique(dept)))
        {
            return AjaxResult.error("新增科室'" + dept.getDeptName() + "'失败，科室编码已存在");
        }
        // 获得当前认证的用户名称 保存到对应实体类中
        dept.setCreateBy(SecurityUtils.getUsername());
        return toAjax(DeptService.insertDept(dept));
    }

    /**
     * 修改岗位
     */
    @PreAuthorize("@ss.hasPermi('his:dept:edit')")
    @Log(title = "岗位管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@Validated @RequestBody HisDept dept)
    {
        if (UserConstants.NOT_UNIQUE.equals(DeptService.checkDeptNameUnique(dept)))
        {
            return AjaxResult.error("修改岗位'" + dept.getDeptName() + "'失败，岗位名称已存在");
        }
        else if (UserConstants.NOT_UNIQUE.equals(DeptService.checkDeptCodeUnique(dept)))
        {
            return AjaxResult.error("修改岗位'" + dept.getDeptName() + "'失败，岗位编码已存在");
        }
        dept.setUpdateBy(SecurityUtils.getUsername());
        return toAjax(DeptService.updateDept(dept));
    }

    /**
     * 删除岗位
     */
    @PreAuthorize("@ss.hasPermi('his:dept:remove')")
    @Log(title = "岗位管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{deptIds}")
    public AjaxResult remove(@PathVariable Long[] deptIds)
    {
        return toAjax(DeptService.deleteDeptByIds(deptIds));
    }

    /**
     * 获取岗位选择框列表
     */
//    @GetMapping("/optionselect")
//    public AjaxResult optionselect()
//    {
//        List<HisDept> depts = DeptService.selectDeptAll();
//        return AjaxResult.success(depts);
//    }

}
