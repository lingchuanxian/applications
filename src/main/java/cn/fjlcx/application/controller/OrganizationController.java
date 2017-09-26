package cn.fjlcx.application.controller;

import cn.fjlcx.application.core.Result;
import cn.fjlcx.application.core.ResultGenerator;
import cn.fjlcx.application.bean.Menu;
import cn.fjlcx.application.bean.Organization;
import cn.fjlcx.application.bean.TreeJson;
import cn.fjlcx.application.service.OrganizationService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *  @author ling_cx 
 *  @date   2017/09/26.
 */
@RestController
@RequestMapping("/organization")
public class OrganizationController {
    @Resource
    private OrganizationService organizationService;
    
    @GetMapping("selectOrganizationOfAll")
	public Result selectOrganizationOfAll() {
		List<Organization> organization = organizationService.selectOrganizationOfAll();
		return ResultGenerator.genSuccessResult(Organization.formatTree(organization));
	}
    
    @GetMapping("selectOrganizationForSelect")
   	public Result selectOrganizationForSelect() {
   		List<Organization> organization = organizationService.selectOrganizationOfAll();
   		List<TreeJson> treeList = new ArrayList<>();
   		for(Organization org : organization) {
   			TreeJson tree = new TreeJson();
   			tree.setId(org.getOrgId());
   			tree.setText(org.getOrgName());
   			tree.setPid(org.getOrgPid());
   			treeList.add(tree);
   		}
   		return ResultGenerator.genSuccessResult(TreeJson.formatTree(treeList));
   	}
    
    @PostMapping("insertOrUpdateOrganization")
    public Result insertOrUpdateOrganization(@ModelAttribute Organization org) {
    	if(org.getOrgId() == null) {
    		org.setOrgOrder(organizationService.selectMaxOrder()+1);
    		organizationService.save(org);
    	}
    	return ResultGenerator.genSuccessResult().setMessage("操作成功");
    }


	@PostMapping("DeleteOrganizationById")
	public Result DeleteOrganizationById(@RequestParam int id) {
		organizationService.deleteById(id);
		return ResultGenerator.genSuccessResult().setMessage("删除成功");
	}
	
	@PostMapping("UpdateOrganizationOrder")
	public Result UpdateMenuOrder(@RequestParam int srcId,@RequestParam int destId) {
		Organization destOrg = organizationService.selectOrganizationById(destId);
		Map<String,Integer> params = new HashMap<>();
		params.put("id", srcId);
		if(srcId < destId) {
			params.put("order", destOrg.getOrgOrder()-1);
		}else {
			params.put("order", destOrg.getOrgOrder()+1);
		}
		organizationService.updateOrganizationOrder(params);
		return ResultGenerator.genSuccessResult().setMessage("修改成功");
	}
    
	@PostMapping("ExchangeOrgPosition")
	public Result ExchangeOrgPosition(@RequestParam int id1,@RequestParam int id2) {
		Organization org1 = organizationService.selectOrganizationById(id1);
		Organization org2 = organizationService.selectOrganizationById(id2);
		int order1 = org1.getOrgOrder();
		org1.setOrgOrder(org2.getOrgOrder());
		org2.setOrgOrder(order1);
		organizationService.update(org1);
		organizationService.update(org2);
		return ResultGenerator.genSuccessResult().setMessage("修改成功");
	}
}
