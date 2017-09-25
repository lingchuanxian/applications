package cn.fjlcx.application.service.impl;

import cn.fjlcx.application.mapper.UserRoleMapper;
import cn.fjlcx.application.bean.UserRole;
import cn.fjlcx.application.service.UserRoleService;
import cn.fjlcx.application.core.AbstractService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 *  @author ling_cx 
 *  @date   2017/09/25.
 */
@Service
@Transactional
public class UserRoleServiceImpl extends AbstractService<UserRole> implements UserRoleService {
    @Resource
    private UserRoleMapper oaUserRoleMapper;

}
