package cn.fjlcx.application.controller;

import cn.fjlcx.application.core.Result;
import cn.fjlcx.application.core.ResultGenerator;
import cn.fjlcx.application.bean.User;
import cn.fjlcx.application.bean.UserRole;
import cn.fjlcx.application.service.UserRoleService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
	private static final Logger logger = LoggerFactory.getLogger(UserRoleController.class);
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
    	logger.info("rid:"+rid+"--uids:"+uids);
    	String id[] = uids.split(",");
    	for(int i = 0;i < id.length; i++) {
    		UserRole ur = new UserRole();
    		ur.setUrUid(Integer.parseInt(id[i]));
    		ur.setUrRid(rid);
    		userRoleService.save(ur);
    	}
    	return ResultGenerator.genSuccessResult().setMessage("新增成功");
    }

    @PostMapping("RemoveUserOfRole")
    public Result RemoveUserOfRole(@RequestParam String ids) {
    	userRoleService.deleteByIds(ids.substring(0, ids.length()-1));
    	return ResultGenerator.genSuccessResult().setMessage("移除成功");
    }
    

    @PostMapping("SelectUserRoleByUid")
    public Result SelectUserRoleByUid(@RequestParam int id) {
    	List<UserRole> listRole = userRoleService.selectUserRoleByUserId(id);
    	return ResultGenerator.genSuccessResult(listRole);
    }
}
