package com.deying.core.service.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.user.RoleDao;
import com.deying.core.dao.user.impl.FunctionDaoImpl;
import com.deying.core.dao.user.impl.RoleFunctionDaoImpl;
import com.deying.core.pojo.user.ComFunction;
import com.deying.core.pojo.user.ComRole;
import com.deying.core.pojo.user.ComRoleFunction;
import com.deying.core.service.user.RoleService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("roleService")
public class RoleServiceImpl extends GenericServiceImpl<ComRole, String> implements
		RoleService<ComRole, String> {

	@Autowired
	private FunctionDaoImpl functionDao = null;
	@Autowired
	private RoleFunctionDaoImpl roleFunctionDao = null;
	
	
	public RoleServiceImpl() {
	}

	public void setRoleAuthorized() {
		
	}
	
	@Autowired
	public void setDao(RoleDao dao) {
		super.setDao(dao);
	}

	/**
	 * 角色授权
	 * @param roleId
	 * @param funs
	 */
	public void saveRoleFuns(String roleId, String funs) {
		ComRole role = this.get(roleId);
		String[] temp = funs.split(",");
		ComFunction fun = null;
		//删除原来权限
		ComRoleFunction example = new ComRoleFunction();
		example.setComRole(role);
		List<ComRoleFunction> list = this.roleFunctionDao.listAll(example, null, null, null);
		for (ComRoleFunction rf : list) {
			this.roleFunctionDao.delete(rf);
		}
		//设置新权�?
		for (String f : temp) {
			fun = this.functionDao.get(f);
			if (fun == null) continue;
			ComRoleFunction rf = new ComRoleFunction();
			rf.setComRole(role);
			rf.setComFunction(fun);
			this.roleFunctionDao.save(rf);
			if (fun.getParentFunctionId() != null) {
				fun = this.functionDao.get(fun.getParentFunctionId());
				rf = new ComRoleFunction();
				rf.setComRole(role);
				rf.setComFunction(fun);
				List<ComRoleFunction> ls = this.roleFunctionDao.listAll(rf, null, null, null);
				if (ls.size() == 0) {
					this.roleFunctionDao.save(rf);
				}
			}
			
		}
	}

	public FunctionDaoImpl getFunctionDao() {
		return functionDao;
	}

	public void setFunctionDao(FunctionDaoImpl functionDao) {
		this.functionDao = functionDao;
	}

	public RoleFunctionDaoImpl getRoleFunctionDao() {
		return roleFunctionDao;
	}

	public void setRoleFunctionDao(RoleFunctionDaoImpl roleFunctionDao) {
		this.roleFunctionDao = roleFunctionDao;
	}

}
