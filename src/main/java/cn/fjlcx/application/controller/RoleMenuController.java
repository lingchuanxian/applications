package cn.fjlcx.application.controller;

import cn.fjlcx.application.core.Result;
import cn.fjlcx.application.core.ResultGenerator;
import cn.fjlcx.application.bean.RoleMenu;
import cn.fjlcx.application.service.RoleMenuService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 *  @author ling_cx 
 *  @date   2017/09/28.
 */
@RestController
@RequestMapping("/roleMenu")
public class RoleMenuController {
    @Resource
    private RoleMenuService roleMenuService;

    @PostMapping("SelectRoleMenuByRid")
    public Result SelectRoleMenuByRid(@RequestParam int id) {
    	List<RoleMenu> listRole = roleMenuService.selectMenuByRole(id);
    	return ResultGenerator.genSuccessResult(listRole);
    }
    
    @PostMapping("SaveRoleMenu")
	public Result SaveRoleMenu(@RequestParam int id,@RequestParam String ids) {
    	roleMenuService.deleteRoleMenuByRole(id);
    	String[] mid = ids.split(",");
    	for(int i = 0;i<mid.length;i++) {
    		int muid = Integer.parseInt(mid[i]);
    		if(muid!=-1) {
    			RoleMenu rm = new RoleMenu();
        		rm.setRmRid(id);
        		rm.setRmMid(muid);
        		roleMenuService.save(rm);
    		}
    	}
    	return ResultGenerator.genSuccessResult().setMessage("保存成功");
	}
}
