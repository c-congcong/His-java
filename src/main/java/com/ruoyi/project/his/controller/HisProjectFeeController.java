package com.ruoyi.project.his.controller;

import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.his.domain.HisProjectFee;
import com.ruoyi.project.his.service.IHisProjectFeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/his/profee")
public class HisProjectFeeController extends BaseController {

    @Autowired
    private IHisProjectFeeService projectFeeService;

    /**
     * 分页查询检查费用
     * @param projectFee
     * @return
     */
    @PreAuthorize("@ss.hasPermi('his:profee:list')")
    @GetMapping("/list")
    public TableDataInfo selectProjectFeeList(HisProjectFee projectFee){
        // 分页处理
        startPage();
        // 查询并返回
        return getDataTable(projectFeeService.selectProjectFeeByParams(projectFee));
    }

    /**
     * 新增检查费用
     * @param projectFee
     * @return
     */
    @PreAuthorize("@ss.hasPermi('his:profee:add')")
    @Log(title = "检查费用管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@Validated @RequestBody HisProjectFee projectFee){
        // 创建者名字增加
        projectFee.setCreateBy(SecurityUtils.getUsername());
        return toAjax(projectFeeService.insertProjectFee(projectFee));
    }

    /**
     * 更新检查费用
     * @param projectFee
     * @return
     */
    @PreAuthorize("@ss.hasPermi('his:profee:modify')")
    @Log(title = "检查费用管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult modify(@Validated @RequestBody HisProjectFee projectFee){
        // 更新者姓名
        projectFee.setUpdateBy(SecurityUtils.getUsername());
        return toAjax(projectFeeService.updateProjectFee(projectFee));
    }

    /**
     * 根据主键查询
     * @param projectId
     * @return
     */
    @PreAuthorize("@ss.hasPermi('his:profee:query')")
    @GetMapping("/{projectId}")
    public AjaxResult getInfo(@PathVariable Integer projectId){
        return AjaxResult.success(projectFeeService.selectByProjectId(projectId));
    }

    /**
     * 批量删除
     * @param projectIds
     * @return
     */
    @PreAuthorize("@ss.hasPermi('his:profee:remove')")
    @Log(title = "检查费用管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{projectIds}")
    public AjaxResult batchRemove(@PathVariable Integer[] projectIds){
        return toAjax(projectFeeService.batchDeleteByProjectIds(projectIds));
    }

}
