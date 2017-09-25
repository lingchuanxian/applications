package cn.fjlcx.application.service;
import java.util.List;

import cn.fjlcx.application.bean.Role;
import cn.fjlcx.application.core.Service;

/**
 *  @author ling_cx 
 *  @date   2017/09/25.
 */
public interface RoleService extends Service<Role> {
	List<Role> selectAllOfRole();
	int selectMaxOrder();
}
