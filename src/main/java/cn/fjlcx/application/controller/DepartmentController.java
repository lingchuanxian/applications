package cn.fjlcx.application.controller;

import cn.fjlcx.application.core.Result;
import cn.fjlcx.application.core.ResultGenerator;
import cn.fjlcx.application.bean.Department;
import cn.fjlcx.application.bean.Menu;
import cn.fjlcx.application.bean.Organization;
import cn.fjlcx.application.bean.TreeJson;
import cn.fjlcx.application.service.DepartmentService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

import java.util.ArrayList;
import java.util.List;

/**
 *  @author ling_cx 
 *  @date   2017/09/26.
 */
@RestController
@RequestMapping("/department")
public class DepartmentController {
	private static final Logger logger = LoggerFactory.getLogger(DepartmentController.class);
	@Resource
	private DepartmentService departmentService;

	@PostMapping("GetDepartmentByOrgId")
	public Result GetMenuById(@RequestParam int id) {
		List<Department> depList = departmentService.selectDepByOrgId(id);
		return ResultGenerator.genSuccessResult(depList);
	}

	 
    @GetMapping("selectDepForSelect")
   	public Result selectDepForSelect() {
   		List<Department> department = departmentService.findAll();
   		List<TreeJson> treeList = new ArrayList<>();
   		for(Department dep : department) {
   			TreeJson tree = new TreeJson();
   			tree.setId(dep.getDepId());
   			tree.setText(dep.getDepName());
   			tree.setPid(dep.getDepPid());
   			treeList.add(tree);
   		}
   		return ResultGenerator.genSuccessResult(TreeJson.formatTree(treeList));
   	}
	
	@PostMapping("AddOrUpdateDep")
	public Result AddOrUpdateDep(@ModelAttribute Department dep) {
		logger.info("dep:"+dep.toString());
		if(dep.getDepId() == null) {
			dep.setDepOrder(departmentService.selectMaxOrder()+1);
			departmentService.save(dep);
		}else {
			departmentService.update(dep);
		}
		return ResultGenerator.genSuccessResult().setMessage("修改成功");
	}

	@PostMapping("DeleteDepById")
	public Result DeleteDepById(@RequestParam int id) {
		departmentService.deleteById(id);
		return ResultGenerator.genSuccessResult().setMessage("删除成功");
	}
	
	@PostMapping("ExchangeDepPosition")
	public Result ExchangeDepPosition(@RequestParam int id1,@RequestParam int id2) {
		Department dep1 = departmentService.selectDepById(id1);
		Department dep2 = departmentService.selectDepById(id2);
		int order1 = dep1.getDepOrder();
		dep1.setDepOrder(dep2.getDepOrder());
		dep2.setDepOrder(order1);
		departmentService.update(dep1);
		departmentService.update(dep2);
		return ResultGenerator.genSuccessResult().setMessage("修改成功");
	}

}
