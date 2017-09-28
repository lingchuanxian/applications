package cn.fjlcx.application.service;
import java.util.List;

import cn.fjlcx.application.bean.RoleMenu;
import cn.fjlcx.application.core.Service;

/**
 *  @author ling_cx 
 *  @date   2017/09/28.
 */
public interface RoleMenuService extends Service<RoleMenu> {
	List<RoleMenu> selectMenuByRole(int id);
	int deleteRoleMenuByRole(int id);
}
