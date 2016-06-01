 
package com.deying.core.service.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.user.UserRoleDao;
import com.deying.core.dao.user.impl.RoleDaoImpl;
import com.deying.core.dao.user.impl.UserDaoImpl;
import com.deying.core.pojo.user.ComRole;
import com.deying.core.pojo.user.ComUser;
import com.deying.core.pojo.user.ComUserRole;
import com.deying.core.service.user.UserRoleService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("userRoleService")
public class UserRoleServiceImpl extends GenericServiceImpl<ComUserRole, String> implements UserRoleService<ComUserRole, String> {

	@Autowired
	private UserDaoImpl userDao = null;
	@Autowired
	private RoleDaoImpl roleDao = null;
	
	public UserRoleServiceImpl() {
	}

	@Autowired
	public void setDao(UserRoleDao dao) {
		super.setDao(dao);
	}

	/**
	 * 保存用户角色
	 * @param userId
	 * @param roles
	 */
	public void saveUserRole(String userId, String roles) {
		ComUser user = this.userDao.get(userId);
		String[] temp = roles.split(",");
		ComRole role = null;
		//删除原来角色
		ComUserRole example = new ComUserRole();
		example.setComUser(user);
		List<ComUserRole> list = this.listAll(example, null, null, null);
		for (ComUserRole ur : list) {
			this.delete(ur);
		}
		//保存新角�?
		for (String r : temp) {
			role = this.roleDao.get(r);
			if (role == null) continue;
			ComUserRole ur = new ComUserRole();
			ur.setComRole(role);
			ur.setComUser(user);
			this.save(ur);
		}
	}

	public UserDaoImpl getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDaoImpl userDao) {
		this.userDao = userDao;
	}

	public RoleDaoImpl getRoleDao() {
		return roleDao;
	}

	public void setRoleDao(RoleDaoImpl roleDao) {
		this.roleDao = roleDao;
	}

}
