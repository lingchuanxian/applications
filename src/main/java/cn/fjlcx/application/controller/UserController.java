package cn.fjlcx.application.controller;


import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.fjlcx.application.bean.SubmitPaging;
import cn.fjlcx.application.bean.User;
import cn.fjlcx.application.core.Result;
import cn.fjlcx.application.core.ResultGenerator;
import cn.fjlcx.application.service.UserService;

@RestController
@RequestMapping("/user")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	@Resource
	UserService mUserService;

	@GetMapping("GetUserList")
	public Result GetUserList(int page,int rows,String name,String loginName) {
		PageHelper.startPage(page, rows);//设置分页
		Map<String,Object> params1 = new HashMap<String, Object>();
		params1.put("name", name);
		params1.put("loginName", loginName);
		List<User> list = mUserService.selectUserByConditions(params1);
		PageInfo<User> pageData=new PageInfo<User>(list);
		Map<String,Object> params = new HashMap<String, Object>();
		params.put("total", pageData.getTotal());
		params.put("rows", pageData.getList());
		return ResultGenerator.genSuccessResult().setData(params);
	}

	@PostMapping("AddUser")
	public Result AddUser(@ModelAttribute User user) {
		logger.info("user-form:"+user.toString());
		user.setUsRegistdate(new Date());
		mUserService.save(user);
		return ResultGenerator.genSuccessResult().setMessage("新增成功");
	}

	@PostMapping("checkExist")
	public Result checkExist(@RequestParam String name) {
		User user = mUserService.selectUserWithRole(name);
		if(user != null) {
			return ResultGenerator.genSuccessResult(1);
		}else {
			return ResultGenerator.genSuccessResult(0);
		}
	}
	
	@PostMapping("DeleteUserById")
	public Result DeleteUserById(@RequestParam int id) {
		mUserService.deleteById(id);
		return ResultGenerator.genSuccessResult().setMessage("删除成功");
	}
	
	@PostMapping("UpdateUserState")
	public Result DeleteUserById(@RequestParam int id,@RequestParam int state) {
		User user = new User();
		user.setUsId(id);
		user.setUsState(state);
		mUserService.update(user);
		return ResultGenerator.genSuccessResult().setMessage("修改成功");
	}
	
	@PostMapping("SelectUserById")
	public Result SelectUserById(@RequestParam int id) {
		User user = mUserService.selectUserById(id);
		return ResultGenerator.genSuccessResult(user);
	}
}
