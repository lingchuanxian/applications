package cn.fjlcx.application.controller;

import cn.fjlcx.application.core.Result;
import cn.fjlcx.application.core.ResultGenerator;
import cn.fjlcx.application.bean.Menu;
import cn.fjlcx.application.bean.Role;
import cn.fjlcx.application.bean.RoleMenu;
import cn.fjlcx.application.bean.TreeJson;
import cn.fjlcx.application.bean.User;
import cn.fjlcx.application.service.MenuService;
import cn.fjlcx.application.service.RoleMenuService;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *  @author ling_cx 
 *  @date   2017/09/16.
 */
@RestController
@RequestMapping("/menu")
public class MenuController {
	private static final Logger logger = LoggerFactory.getLogger(MenuController.class);

	@Resource
	private MenuService menuService;
	@Resource
	private RoleMenuService roleMenuService;

	@PostMapping("GetMenuList")
	public Result GetMenuList() {
		Subject currentUser = SecurityUtils.getSubject();
		Session session = currentUser.getSession();
		User user = (User)session.getAttribute("currentUser");
		if(user == null) {
			return ResultGenerator.genSuccessResult().setMessage("登录超时，请重新登录。");
		}else {
			List<Role> roles = user.getRoles();
			if(roles == null) {
				return ResultGenerator.genSuccessResult().setMessage("当前用户未分配角色。");
			}else {
				List<TreeJson> tjs=new ArrayList<TreeJson>();  
				List<Menu> menuList = new ArrayList<>();
				for(Role role : roles) {
					List<RoleMenu> rolemenu = roleMenuService.selectMenuByRole(role.getRlId());
					for(RoleMenu rm :rolemenu) {
						Menu menu = menuService.selectMenuById(rm.getRmMid());
						menuList.add(menu);
					}
				}
				for (Menu menu : menuList) {  
					TreeJson tj=new TreeJson();  
					tj.setId(menu.getMuId());  
					tj.setPid(menu.getMuPid());  
					tj.setText(menu.getMuText());  
					tj.setIconCls(menu.getMuIconcls());  
					tj.setState(menu.getMuState());
					tj.setUrl(menu.getMuUrl());
					tj.setChecked(menu.getMuChecked());
					tjs.add(tj);  
				}  
				return ResultGenerator.genSuccessResult(TreeJson.formatTree(tjs));
			}
		}
	}

	@PostMapping("MagageMenuList")
	public Result MagageMenuList() {
		List<TreeJson> tjs=new ArrayList<TreeJson>();  
		List<Menu> menuList = menuService.selectAllOfMenu();
		for (Menu menu : menuList) {  
			TreeJson tj=new TreeJson();  
			tj.setId(menu.getMuId());  
			tj.setPid(menu.getMuPid());  
			tj.setText(menu.getMuText());  
			tj.setIconCls(menu.getMuIconcls());  
			tj.setState(menu.getMuState());
			tj.setUrl(menu.getMuUrl());
			tj.setChecked(menu.getMuChecked());
			tjs.add(tj);  
		}  
		List<TreeJson> treeList = new ArrayList<>();
		TreeJson tree = new TreeJson();
		tree.setText("主菜单");
		tree.setId(-1);
		tree.setChildren(TreeJson.formatTree(tjs));
		treeList.add(tree);
		return ResultGenerator.genSuccessResult(treeList);
	}

	@PostMapping("DeleteMenuById")
	public Result DeleteMenuById(@RequestParam int id) {
		if(menuService.deleteMenuById(id) == 1) {
			return ResultGenerator.genSuccessResult().setMessage("删除成功");
		}else {
			return ResultGenerator.genFailResult("删除失败");
		}
	}

	@PostMapping("AddMenu")
	public Result AddMenu(@ModelAttribute Menu menu) {
		logger.info("menu-add:"+menu.toString());
		menuService.save(menu);
		return ResultGenerator.genSuccessResult().setMessage("添加成功");
	}

	@PostMapping("GetMenuById")
	public Result GetMenuById(@RequestParam int id) {
		Menu menu = menuService.selectMenuById(id);
		return ResultGenerator.genSuccessResult(menu);
	}

	@PostMapping("GetMenuParent")
	public Result GetMenuParent(@RequestParam int id) {
		Subject currentUser = SecurityUtils.getSubject();
		Session session = currentUser.getSession();
		User user = (User)session.getAttribute("currentUser");

		List<Role> roles = user.getRoles();
		List<Menu> menuList = new ArrayList<>();
		for(Role role : roles) {
			List<RoleMenu> rolemenu = roleMenuService.selectMenuByRole(role.getRlId());
			for(RoleMenu rm :rolemenu) {
				Menu menu = menuService.selectMenuById(rm.getRmMid());
				if(menu.getMuPid() == id) {
					menuList.add(menu);
				}
			}
		}
		return ResultGenerator.genSuccessResult(menuList);
	}

	@PostMapping("UpdateMenu")
	public Result UpdateMenu(@ModelAttribute Menu menu) {
		logger.info("menu-edit:"+menu.toString());
		if(menu.getMuId() == null) {
			menu.setMuOrder(menuService.selectMaxOrder()+1);
			menuService.save(menu);
		}else {
			menuService.update(menu);
		}
		return ResultGenerator.genSuccessResult().setMessage("修改成功");
	}

	@PostMapping("UpdateMenuOrder")
	public Result UpdateMenuOrder(@RequestParam int srcId,@RequestParam int destId) {
		Menu destMenu = menuService.selectMenuById(destId);
		Map<String,Integer> params = new HashMap<>();
		params.put("id", srcId);
		if(srcId < destId) {
			params.put("order", destMenu.getMuOrder()-1);
		}else {
			params.put("order", destMenu.getMuOrder()+1);
		}
		menuService.updateMenuOrder(params);
		return ResultGenerator.genSuccessResult().setMessage("修改成功");
	}

	@PostMapping("ExchangeMenuPosition")
	public Result ExchangeMenuPosition(@RequestParam int id1,@RequestParam int id2) {
		Menu menu1 = menuService.selectMenuById(id1);
		Menu menu2 = menuService.selectMenuById(id2);
		int order1 = menu1.getMuOrder();
		menu1.setMuOrder(menu2.getMuOrder());
		menu2.setMuOrder(order1);
		menuService.update(menu1);
		menuService.update(menu2);
		return ResultGenerator.genSuccessResult().setMessage("修改成功");
	}

	@GetMapping("GetMainMenuChildren")
	public Result GetMainMenuChildren(@RequestParam int id) {
		List<TreeJson> tjs=new ArrayList<TreeJson>();  
		
		Subject currentUser = SecurityUtils.getSubject();
		Session session = currentUser.getSession();
		User user = (User)session.getAttribute("currentUser");

		List<Role> roles = user.getRoles();
		List<Menu> menuList = new ArrayList<>();
		for(Role role : roles) {
			List<RoleMenu> rolemenu = roleMenuService.selectMenuByRole(role.getRlId());
			for(RoleMenu rm :rolemenu) {
				Menu menu = menuService.selectMenuById(rm.getRmMid());
				menuList.add(menu);
			}
		}
		for (Menu menu : menuList) {  
			TreeJson tj=new TreeJson();  
			tj.setId(menu.getMuId());  
			tj.setPid(menu.getMuPid());  
			tj.setText(menu.getMuText());  
			tj.setIconCls(menu.getMuIconcls());  
			tj.setState(menu.getMuState());
			tj.setUrl(menu.getMuUrl());
			tj.setChecked(menu.getMuChecked());
			tjs.add(tj);  
		}  
		TreeJson root = new TreeJson(); 
		List<TreeJson> treelist = new ArrayList<TreeJson>();//拼凑好的json格式的数据       
		if (tjs != null && tjs.size() > 0) {  
			for(int i= 0; i < tjs.size(); i++){  
				//如果该节点没有父节点那么它就是根（root）节点  
				if(tjs.get(i).getPid() == id){  
					root = tjs.get(i) ;  
					//获取该根节点的子节点  
					TreeJson.getChildrenNodes(tjs,root);  
					treelist.add(root) ;  
				}  
			}  
		}        

		logger.info("size:"+treelist.size());
		return ResultGenerator.genSuccessResult(treelist);
	}
}
