package com.deying.core.service.user.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.user.UserDao;
import com.deying.core.dao.user.impl.FunctionDaoImpl;
import com.deying.core.dao.user.impl.UserDaoImpl;
import com.deying.core.dao.user.impl.UserRoleDaoImpl;
import com.deying.core.pojo.user.ComFunction;
import com.deying.core.pojo.user.ComRoleFunction;
import com.deying.core.pojo.user.ComUser;
import com.deying.core.pojo.user.ComUserRole;
import com.deying.core.service.user.UserService;
import com.deying.util.core.com.framework.hibernate3.Condition;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;
import com.deying.util.core.com.framework.hibernate3.Nullable;
import com.deying.util.core.com.framework.hibernate3.OrderBy;

@Transactional
@Service("userService")
public class UserServiceImpl extends GenericServiceImpl<ComUser, String> implements UserService<ComUser, String> {

	@Autowired
	private FunctionDaoImpl functionDao = null;
	@Autowired
	private UserDaoImpl userDao = null;
	@Autowired
	private UserRoleDaoImpl userRoleDao = null;
	
	public UserServiceImpl() {
	}

	@Autowired
	public void setDao(UserDao dao) {
		super.setDao(dao);
	}
	/**
	 *
	 * 加载用户对应的权限
	 */
	public  String loadFunsByUser(String userId) {
		ComUser user = this.userDao.get(userId);
		ComUserRole example = new ComUserRole();
		example.setComUser(user);
		List<ComUserRole> urs = this.userRoleDao.listAll(example, null, null, null);
		Map<String, String> map = new HashMap<String, String>();
		String key = null;
		for (ComUserRole ur : urs) {
			Set<ComRoleFunction> rfs = ur.getComRole().getComRoleFunctions();
			for (ComRoleFunction rf : rfs) {
				key = rf.getComFunction().getFunctionId();
				map.put(key, key);
			}
		}
		return loadFunsByUser(null, map);
	}
	/**
	 *
	 * 加载用户对应的权限
	 *
	 * @param id
	 * @param role
	 * @return
	 */
	private String loadFunsByUser(String id, Map<String, String> map) {
		StringBuilder sb = new StringBuilder();
		sb.append("[");
		ComFunction ex = new ComFunction();
		Condition[] conds = null;
		if (id == null || id.trim().length() == 0) {
			conds = new Condition[2];
			conds[0] = new Nullable("parentFunctionId", true);
			conds[1] = OrderBy.asc("sortNo");
		} else {
			ex.setParentFunctionId(id);
		}
		List<ComFunction> list = this.functionDao.listAll(ex, null, conds, null);
		StringBuilder data = new StringBuilder();
		for (ComFunction r : list) {
			if (map.containsKey(r.getFunctionId())) {
				data.append(data.length() > 0 ? "," : "");
				data.append("{\"id\":").append(r.getFunctionId()).append(",");
				data.append("\"text\":\"").append(r.getFunctionName()).append("\",");
				data.append("\"open\":true,");
				data.append("\"attributes\":{\"url\":\"blank1.0").append(r.getUrl()).append("\"}");
				String ch = this.loadFunsByUser(r.getFunctionId(), map);
				if (ch.length() > 2) {
					data.append(",\"children\":").append(ch);
				}
				data.append(",\"state\":\"open\"}");
			}
		}
//		if (id == null || id.trim().length() == 0) {
//			sb.append("{\"text\":\"Root\",\"children\":[");
//		}
		sb.append(data);
//		if (id == null || id.trim().length() == 0) {
//			sb.append("]}");
//		}
		sb.append("]");
		return sb.toString();
	}

	public FunctionDaoImpl getFunctionDao() {
		return functionDao;
	}

	public void setFunctionDao(FunctionDaoImpl functionDao) {
		this.functionDao = functionDao;
	}

	public UserDaoImpl getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDaoImpl userDao) {
		this.userDao = userDao;
	}

	public UserRoleDaoImpl getUserRoleDao() {
		return userRoleDao;
	}

	public void setUserRoleDao(UserRoleDaoImpl userRoleDao) {
		this.userRoleDao = userRoleDao;
	}

}
