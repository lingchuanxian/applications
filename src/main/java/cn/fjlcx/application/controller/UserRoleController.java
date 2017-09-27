package cn.fjlcx.application.controller;

import cn.fjlcx.application.core.Result;
import cn.fjlcx.application.core.ResultGenerator;
import cn.fjlcx.application.bean.User;
import cn.fjlcx.application.bean.UserRole;
import cn.fjlcx.application.service.UserRoleService;
import org.springframework.web.bind.annotation.*;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import javax.annotation.Resource;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *  @author ling_cx 
 *  @date   2017/09/25.
 */
@RestController
@RequestMapping("/userRole")
public class UserRoleController {
    @Resource
    private UserRoleService userRoleService;
    
    @GetMapping("SelectUserByRid")
    public Result SelectUserByRid(@RequestParam int id,int page,int rows) {
		PageHelper.startPage(page, rows);//设置分页
		List<UserRole> listUserRole = userRoleService.selectUserRoleByRoleId(id);
		PageInfo<UserRole> pageData=new PageInfo<UserRole>(listUserRole);
		Map<String,Object> params = new HashMap<String, Object>();
		params.put("total", pageData.getTotal());
		params.put("rows", pageData.getList());
		return ResultGenerator.genSuccessResult().setData(params);
	}
    
    @PostMapping("AddUserToRole")
    public Result AddUserToRole(@RequestParam int rid,@RequestParam String uids) {
    	String id[] = uids.split(",");
    	List<UserRole> listUR = new ArrayList<>();
    	for(int i = 0;i < id.length - 1; i++) {
    		UserRole ur = new UserRole();
    		ur.setUrUid(Integer.parseInt(id[i]));
    		ur.setUrRid(rid);
    		listUR.add(ur);
    	}
    	userRoleService.save(listUR);
    	return ResultGenerator.genSuccessResult().setMessage("新增成功");
    }

}
