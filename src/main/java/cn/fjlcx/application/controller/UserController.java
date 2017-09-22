package cn.fjlcx.application.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
	public Result GetUserList(int page,int rows) {
		SubmitPaging mSubmitPaging = new SubmitPaging();
		mSubmitPaging.setPageIndex(page);
		mSubmitPaging.setPageSize(rows);
		PageHelper.startPage(mSubmitPaging.getPageIndex(), mSubmitPaging.getPageSize());//设置分页
		List<User> list = mUserService.selectUserByConditions(mSubmitPaging);
		PageInfo<User> pageData=new PageInfo<User>(list);
		Map<String,Object> params = new HashMap<String, Object>();
		params.put("total", pageData.getTotal());
		params.put("rows", pageData.getList());
		return ResultGenerator.genSuccessResult().setData(params);
	}
}
