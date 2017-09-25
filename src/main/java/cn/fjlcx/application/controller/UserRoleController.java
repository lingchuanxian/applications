package cn.fjlcx.application.controller;

import cn.fjlcx.application.core.Result;
import cn.fjlcx.application.core.ResultGenerator;
import cn.fjlcx.application.bean.UserRole;
import cn.fjlcx.application.service.UserRoleService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 *  @author ling_cx 
 *  @date   2017/09/25.
 */
@RestController
@RequestMapping("/user/role")
public class UserRoleController {
    @Resource
    private UserRoleService userRoleService;

}
