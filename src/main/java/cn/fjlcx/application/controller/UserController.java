package cn.fjlcx.application.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.DisabledAccountException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cn.fjlcx.application.bean.SubmitPaging;
import cn.fjlcx.application.bean.User;
import cn.fjlcx.application.core.Result;
import cn.fjlcx.application.core.ResultGenerator;
import cn.fjlcx.application.core.ServiceException;
import cn.fjlcx.application.service.UserService;

@RestController
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	@Resource
	UserService mUserService;
	
	@GetMapping("GetUserList")
	public Result GetUserList(@ModelAttribute SubmitPaging mSubmitPaging) {
		return ResultGenerator.genSuccessResult().setData(mUserService.selectAllUser());
	}

}
