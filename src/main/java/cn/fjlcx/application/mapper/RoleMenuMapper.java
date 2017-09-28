package cn.fjlcx.application.mapper;

import java.util.List;

import cn.fjlcx.application.bean.RoleMenu;
import cn.fjlcx.application.core.Mapper;

public interface RoleMenuMapper extends Mapper<RoleMenu> {
	List<RoleMenu> selectMenuByRole(int id);
	int deleteRoleMenuByRole(int id);
}