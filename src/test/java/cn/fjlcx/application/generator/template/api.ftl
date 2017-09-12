package ${basePackage}.api;
import ${basePackage}.core.Result;
import ${basePackage}.core.ResultGenerator;
import ${basePackage}.model.${modelNameUpperCamel};
import ${basePackage}.service.${modelNameUpperCamel}Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;
import io.swagger.annotations.ApiOperation;

/**
* Created by ${author} on ${date}.
*/
@RestController
@RequestMapping("${baseRequestMapping}")
public class ${modelNameUpperCamel}Interface {
    @Resource
    private ${modelNameUpperCamel}Service ${modelNameLowerCamel}Service;

    @ApiOperation(value = "新增${modelNameUpperCamel}",notes = "新增${modelNameUpperCamel}")
    @PostMapping("/add")
    public Result add(@RequestParam(value="ticket") String ticket,${modelNameUpperCamel} ${modelNameLowerCamel}) {
        ${modelNameLowerCamel}Service.save(${modelNameLowerCamel});
        return ResultGenerator.genSuccessResult();
    }

    @ApiOperation(value = "删除${modelNameUpperCamel}",notes = "根据${modelNameUpperCamel}ID删除${modelNameUpperCamel}")
    @DeleteMapping("/delete")
    public Result delete(@RequestParam(value="ticket") String ticket,@RequestParam Integer id) {
        ${modelNameLowerCamel}Service.deleteById(id);
        return ResultGenerator.genSuccessResult();
    }

    @ApiOperation(value = "更新${modelNameUpperCamel}信息",notes = "根据${modelNameUpperCamel}ID更新${modelNameUpperCamel}信息")
    @PutMapping("/update")
    public Result update(@RequestParam(value="ticket") String ticket,${modelNameUpperCamel} ${modelNameLowerCamel}) {
        ${modelNameLowerCamel}Service.update(${modelNameLowerCamel});
        return ResultGenerator.genSuccessResult();
    }

    @ApiOperation(value = "查询${modelNameUpperCamel}信息",notes = "根据${modelNameUpperCamel}ID查询${modelNameUpperCamel}信息")
    @GetMapping("/detail")
    public Result detail(@RequestParam(value="ticket") String ticket,@RequestParam Integer id) {
        ${modelNameUpperCamel} ${modelNameLowerCamel} = ${modelNameLowerCamel}Service.findById(id);
        return ResultGenerator.genSuccessResult(${modelNameLowerCamel});
    }

    @ApiOperation(value = "获取${modelNameUpperCamel}列表",notes = "获取分页${modelNameUpperCamel}列表信息")
    @GetMapping("/list")
    public Result list(@RequestParam(value="ticket") String ticket,@RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer size) {
        PageHelper.startPage(page, size);
        List<${modelNameUpperCamel}> list = ${modelNameLowerCamel}Service.findAll();
        PageInfo pageInfo = new PageInfo(list);
        return ResultGenerator.genSuccessResult(pageInfo);
    }
}
