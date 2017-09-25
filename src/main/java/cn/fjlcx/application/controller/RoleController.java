package cn.fjlcx.application.controller;

import cn.fjlcx.application.core.Result;
import cn.fjlcx.application.core.ResultGenerator;
import cn.fjlcx.application.bean.Role;
import cn.fjlcx.application.service.RoleService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 *  @author ling_cx 
 *  @date   2017/09/25.
 */
@RestController
@RequestMapping("/role")
public class RoleController {
	private static final Logger logger = LoggerFactory.getLogger(RoleController.class);
	@Resource
	private RoleService roleService;

	@GetMapping("selectAllOfRole")
	public Result selectAllOfRole() {
		List<Role> roleList = roleService.selectAllOfRole();
		return ResultGenerator.genSuccessResult(roleList);
	}

	@PostMapping("AddOrUpdateRole")
	public Result AddRole(@ModelAttribute Role role) {
		if(role.getRlId() == null) {
			role.setRlOrder(roleService.selectMaxOrder()+1);
			roleService.save(role);
		}else {
			roleService.update(role);
		}
		return ResultGenerator.genSuccessResult().setMessage("成功");
	}

	@PostMapping("DeleteRoleById")
	public Result DeleteRoleById(@RequestParam int id) {
		roleService.deleteById(id);
		return ResultGenerator.genSuccessResult().setMessage("删除成功");
	}

}
