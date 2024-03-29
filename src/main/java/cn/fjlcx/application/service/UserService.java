package cn.fjlcx.application.service;

import java.util.List;
import java.util.Map;

import cn.fjlcx.application.bean.User;
import cn.fjlcx.application.core.Service;

public interface UserService extends Service<User>{
	User selectUserWithRole(String username);
	List<User> selectUserByConditions(Map<String,Object> params);
	User selectUserById(int id);
}
