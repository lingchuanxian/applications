package cn.fjlcx.application.service;
import java.util.List;
import java.util.Map;

import cn.fjlcx.application.bean.Organization;
import cn.fjlcx.application.core.Service;

/**
 *  @author ling_cx 
 *  @date   2017/09/26.
 */
public interface OrganizationService extends Service<Organization> {
	List<Organization> selectOrganizationOfAll();
	int selectMaxOrder();
	Organization selectOrganizationById(int id);
	int updateOrganizationOrder(Map<String,Integer> params);
}
