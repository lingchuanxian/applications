package cn.fjlcx.application.mapper;

import java.util.List;

import cn.fjlcx.application.bean.User;
import cn.fjlcx.application.core.Mapper;

public interface UserMapper extends Mapper<User>{
	User selectUserWithRole(String username);
	List<User> selectAllUser();
}
