package cn.fjlcx.application.service;
import java.util.List;

import cn.fjlcx.application.bean.Department;
import cn.fjlcx.application.core.Service;

/**
 *  @author ling_cx 
 *  @date   2017/09/26.
 */
public interface DepartmentService extends Service<Department> {
	List<Department> selectDepByOrgId(int id);
	Department selectDepById(int id);
	int selectMaxOrder();
}
