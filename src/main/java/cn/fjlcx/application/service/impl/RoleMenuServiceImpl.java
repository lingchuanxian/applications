package cn.fjlcx.application.service.impl;

import cn.fjlcx.application.mapper.RoleMenuMapper;
import cn.fjlcx.application.bean.RoleMenu;
import cn.fjlcx.application.service.RoleMenuService;
import cn.fjlcx.application.core.AbstractService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import javax.annotation.Resource;

/**
 *  @author ling_cx 
 *  @date   2017/09/28.
 */
@Service
@Transactional
public class RoleMenuServiceImpl extends AbstractService<RoleMenu> implements RoleMenuService {
    @Resource
    private RoleMenuMapper oaRoleMenuMapper;

	@Override
	public List<RoleMenu> selectMenuByRole(int id) {
		return oaRoleMenuMapper.selectMenuByRole(id);
	}

	@Override
	public int deleteRoleMenuByRole(int id) {
		return oaRoleMenuMapper.deleteRoleMenuByRole(id);
	}

}
