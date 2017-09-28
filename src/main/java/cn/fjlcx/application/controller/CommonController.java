package cn.fjlcx.application.controller;

import java.util.ArrayList;
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
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.fjlcx.application.bean.Role;
import cn.fjlcx.application.bean.User;
import cn.fjlcx.application.bean.UserRole;
import cn.fjlcx.application.core.Result;
import cn.fjlcx.application.core.ResultGenerator;
import cn.fjlcx.application.core.ServiceException;
import cn.fjlcx.application.service.RoleService;
import cn.fjlcx.application.service.UserRoleService;
import cn.fjlcx.application.service.UserService;

@Controller
public class CommonController {
	private static final Logger logger = LoggerFactory.getLogger(CommonController.class);

	@Resource
	UserService mUserService;
	@Resource
	private UserRoleService userRoleService;
	@Resource
	private RoleService roleService;
	
	@GetMapping("/")
	public String index() {
		return "redirect:/login.html";
	}

	@PostMapping("userlogin")
	@ResponseBody
	public Result login(@RequestParam String username, @RequestParam String password){
		UsernamePasswordToken token = new UsernamePasswordToken(username, password);
		Subject currentUser = SecurityUtils.getSubject();
		try {
			logger.info("对用户[" + username + "]进行登录验证..验证开始");
			currentUser.login(token);
			logger.info("对用户[" + username + "]进行登录验证..验证通过");
		}catch(UnknownAccountException uae){
			logger.info("对用户[" + username + "]进行登录验证..验证未通过,未知账户");
			throw new ServiceException("未知账户");
		}catch(IncorrectCredentialsException ice){
			logger.info("对用户[" + username + "]进行登录验证..验证未通过,错误的凭证");
			throw new ServiceException("密码不正确");
		}catch(LockedAccountException lae){
			logger.info("对用户[" + username + "]进行登录验证..验证未通过,账户已锁定");
			throw new ServiceException("账户已锁定");
		}catch(ExcessiveAttemptsException eae){
			logger.info("对用户[" + username + "]进行登录验证..验证未通过,错误次数大于5次,账户已锁定");
			throw new ServiceException("用户名或密码错误次数大于5次,账户已锁定");
		}catch (DisabledAccountException sae){
			logger.info("对用户[" + username + "]进行登录验证..验证未通过,帐号已经禁止登录");
			throw new ServiceException( "帐号已被禁用，请联系管理员。");
		}catch(AuthenticationException ae){
			//通过处理Shiro的运行时AuthenticationException就可以控制用户登录失败或密码错误时的情景
			logger.info("对用户[" + username + "]进行登录验证..验证未通过,堆栈轨迹如下");
			ae.printStackTrace();
			throw new ServiceException("用户名或密码不正确");
		}
		if(currentUser.isAuthenticated()){
			logger.info("用户[" + username + "]登录认证通过(这里可以进行一些认证通过后的一些系统参数初始化操作)");
			Session session = currentUser.getSession();
			User user = mUserService.selectUserWithRole(username);
			List<Role> roles = new ArrayList<>();
			List<UserRole> roleList = userRoleService.selectUserRoleByUserId(user.getUsId());
			for(UserRole urole:roleList) {
				Role role = urole.getUrRole();
				roles.add(role);
			}
			user.setRoles(roles);
			session.setAttribute("currentUser",user);
			return ResultGenerator.genSuccessResult().setMessage("登录成功").setData(user);
		}else{
			token.clear();
			throw new ServiceException("登录失败");
		}
	}

	@GetMapping("GetCurrentSession")
	@ResponseBody
	public User GetCurrentSession() {
		Subject currentUser = SecurityUtils.getSubject();
		Session session = currentUser.getSession();
		User user = (User)session.getAttribute("currentUser");
		if(user == null) {
			return new User();
		}else {
			logger.info("session:"+user.toString());
			return user;
		}
	}
}
