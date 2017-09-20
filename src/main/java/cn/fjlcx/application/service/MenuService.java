package cn.fjlcx.application.service;
import java.util.List;
import java.util.Map;

import cn.fjlcx.application.bean.Menu;
import cn.fjlcx.application.core.Service;

/**
 *  @author ling_cx 
 *  @date   2017/09/16.
 */
public interface MenuService extends Service<Menu> {
	List<Menu> selectAllOfMenu();
	int deleteMenuById(int id);
	Menu selectMenuById(int id);
	List<Menu> selectMenuByPid(int pid);
	int updateMenuOrder(Map<String,Integer> params);
}
