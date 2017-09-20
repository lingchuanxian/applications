package cn.fjlcx.application.controller;

import cn.fjlcx.application.core.Result;
import cn.fjlcx.application.core.ResultGenerator;
import cn.fjlcx.application.bean.Menu;
import cn.fjlcx.application.bean.TreeJson;
import cn.fjlcx.application.service.MenuService;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

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
    @PostMapping("GetMenuList")
    public Result GetMenuList() {
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
    	logger.info("size:"+tjs.size());
    	return ResultGenerator.genSuccessResult(TreeJson.formatTree(tjs));
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
    	logger.info("size:"+tjs.size());
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
    	List<Menu> listParentMenu = menuService.selectMenuByPid(id);
    	return ResultGenerator.genSuccessResult(listParentMenu);
    }
    
    @PostMapping("UpdateMenu")
    public Result UpdateMenu(@ModelAttribute Menu menu) {
    	logger.info("menu-edit:"+menu.toString());
    	menuService.update(menu);
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
    
    
    public List<TreeJson> getMenuWithChildren() {
    	List<TreeJson> menuJsonList = new ArrayList<>();
    	List<Menu> menuList = menuService.selectAllOfMenu();
    	for(Menu menu : menuList) {
    		if(menu.getMuPid() == 0) {
    			TreeJson menuJson = new TreeJson();
    			menuJson.setId(menu.getMuId());
    			menuJson.setText(menu.getMuText());
    			menuJson.setState(menu.getMuState());
    			menuJson.setChecked("false");
    			menuJson.setUrl(menu.getMuUrl());
    			menuJson.setIconCls(menu.getMuIconcls());
    			menuJson.setPid(menu.getMuPid());
    			List<TreeJson> ChildList = new ArrayList<>();
    			for(Menu childMenu : menuList) {
    				if(childMenu.getMuPid() == menu.getMuId()) {
    					TreeJson childJson = new TreeJson();
    					childJson.setId(childMenu.getMuId());
    					childJson.setText(childMenu.getMuText());
    					childJson.setState(childMenu.getMuState());
    					childJson.setChecked("false");
    					childJson.setUrl(childMenu.getMuUrl());
    					childJson.setIconCls(childMenu.getMuIconcls());
    					childJson.setPid(childMenu.getMuPid());
    	    			ChildList.add(childJson);
    				}
    			}
    			menuJson.setChildren(ChildList);
    			menuJsonList.add(menuJson);
    		}
    	}
    	return menuJsonList;
    }
}
