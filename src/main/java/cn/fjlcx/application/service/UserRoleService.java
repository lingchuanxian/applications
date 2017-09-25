package cn.fjlcx.application.service;
import java.util.List;

import cn.fjlcx.application.bean.UserRole;
import cn.fjlcx.application.core.Service;

/**
 *  @author ling_cx 
 *  @date   2017/09/25.
 */
public interface UserRoleService extends Service<UserRole> {
	List<UserRole> selectUserRoleByUserId(int id);
}
