package cn.machine.geek.controller;

import cn.machine.geek.dto.PageRequest;
import cn.machine.geek.dto.R;
import cn.machine.geek.entity.${className};
import cn.machine.geek.service.I${className}Service;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;

/**
* @Author: MachineGeek
* @Description: ${moduleName}控制器
* @Email: 794763733@qq.com
* @Date: ${date}
*/
@Api(tags = "${moduleName}接口")
@RestController
@RequestMapping(value = "/${instanceName}")
public class ${className}Controller {
    @Autowired
    private I${className}Service ${instanceName}Service;

    @ApiOperation(value = "获取所有${moduleName}",notes = "获取所有${moduleName}")
    @GetMapping(value = "/list")
    public R list(){
        return R.ok(${instanceName}Service.list());
    }

    @ApiOperation(value = "分页获取${moduleName}",notes = "分页获取${moduleName}")
    @GetMapping(value = "/paging")
    public R paging(@Validated PageRequest pageRequest){
        QueryWrapper<${className}> queryWrapper = new QueryWrapper<>();
        // 在这里写条件查询逻辑逻辑
        String keyWord = pageRequest.getKeyWord();
        if(!StringUtils.isEmpty(keyWord)){
        }
        return R.ok(${instanceName}Service.page(new Page<>(pageRequest.getPage(),pageRequest.getSize()),queryWrapper));
    }

    @ApiOperation(value = "增加${moduleName}",notes = "增加${moduleName}")
    @PostMapping(value = "/add")
    @Transactional
    public R add(@RequestBody ${className} ${instanceName}){
        ${instanceName}.setCreateTime(LocalDateTime.now());
        return R.ok(${instanceName}Service.save(${instanceName}));
    }

    @ApiOperation(value = "根据ID删除${moduleName}",notes = "根据ID删除${moduleName}")
    @DeleteMapping(value = "/deleteById")
    public R deleteById(@RequestParam(value = "id") Long id){
        return R.ok(${instanceName}Service.removeById(id));
    }

    @ApiOperation(value = "根据ID更新${moduleName}",notes = "根据ID更新${moduleName}")
    @PutMapping(value = "/modifyById")
    @Transactional
    public R modifyById(@RequestBody ${className} ${instanceName}){
        ${instanceName}.setUpdateTime(LocalDateTime.now());
        return R.ok(${instanceName}Service.updateById(${instanceName}));
    }

    @ApiOperation(value = "根据ID获取${moduleName}",notes = "根据ID获取${moduleName}")
    @GetMapping(value = "/getById")
    public R getById(@RequestParam(value = "id") Long id){
        return R.ok(${instanceName}Service.getById(id));
    }
}