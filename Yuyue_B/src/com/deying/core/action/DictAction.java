package com.deying.core.action;

import java.util.List;

import org.hibernate.criterion.MatchMode;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.user.ComDict;
import com.deying.core.service.user.impl.DictServiceImpl;
import com.deying.util.core.com.framework.common.tools.Constants;
import com.deying.util.core.com.framework.hibernate3.Condition;
import com.deying.util.core.com.framework.hibernate3.OrderBy;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;


public class DictAction extends BaseMgrAction {

	private static final long serialVersionUID = 1L;
	
	@Autowired
	private DictServiceImpl dictService = null;

	private ComDict dict = null;
	
	private ComDict inDict = null;
	
	private String id;
	
	public String list() throws Exception {
		LOG.debug("--------------------DictAction -> list----------------");
		if (this.ctx.getSessionAttr(Constants.SEARCH_COND) instanceof ComDict && this._query == null) {//编辑或新增或删除返回检索页面使用先前保存的检索条件
			this.inDict = (ComDict) this.ctx.getSessionAttr(Constants.SEARCH_COND);
		}
		this.start = this.start == null ? 0 : this.start;
		this.inDict = this.inDict == null ? new ComDict() : this.inDict;
		Condition[] conds = new Condition[2];
		conds[0] = OrderBy.asc("dictTypeCode");
		conds[1] = OrderBy.asc("sortNo");
		this.pgn = this.dictService.listByPage(this.inDict, this.start, 10, MatchMode.ANYWHERE, conds, null);
		this.ctx.setSessionAttr(Constants.SEARCH_COND, this.inDict);
		return LIST;
	}
	
	/**
	 * 新增对象保存
	 * @return
	 */
	public String add() throws Exception {
		LOG.debug("--------------------DictAction -> add----------------");
		return ADD;
	}
	public String save() throws Exception {
		LOG.debug("--------------------DictAction -> save----------------");
		if (dict != null) {
			this.dictService.save(dict);
			this.addActionMessage(this.getText("do.success.back"));
		}
		return list();
	}
	public boolean validateSave() {
		if(hasErrors()) {
			return true;
		}
		return false;
	}
	/**
	 * 编辑对象加载
	 * @return
	 */
	public String edit() throws Exception {
		LOG.debug("--------------------DictAction -> edit----------------");
		this.dict = this.dictService.get(id);
		return EDIT;
	}
	/**
	 * 编辑对象保存
	 * @return
	 */
	public String upd() throws Exception {
		LOG.debug("--------------------DictAction -> upd----------------");
		if (dict != null) {
			this.dict = this.dictService.update(dict);
			this.addActionMessage(this.getText("do.success.back"));
		}
		return list();
	}
	public boolean validateUpd() {
		if(hasErrors()) {
			return true;
		}
		ComDict r = this.dictService.get(this.dict.getDictId());
		if (r == null) {
			this.addActionError(this.getText("err.no.entity"));
		}
		if(hasErrors()) {
			return true;
		}
		return false;
	}
	/**
	 * 删除
	 * @return
	 */
	public String del() throws Exception {
		LOG.debug("--------------------DictAction -> del----------------");
		if (this.id != null) {
			this.dictService.deleteById(this.id);
		}
		msg="操作成功!";
		return list();
	}
	public boolean validateDel() {
		if(hasErrors()) {
			return true;
		}
		ComDict r = this.dictService.get(this.id);
		if (r == null || this.id == null) {
			this.addActionError(this.getText("err.no.entity"));
		}
		if(hasErrors()) {
			return true;
		}
		return false;
	}
	/**
	 * 查看对象
	 * @return
	 */
	public String load() throws Exception {
		LOG.debug("--------------------DictAction -> load----------------");
		this.dict = this.dictService.get(id);
		return LOAD;
	}

	public void listDictsByTypeCode() {
		ComDict example = new ComDict();
		example.setDictTypeCode(id);
//		example.setLocaleId("zh_CN");
		List<ComDict> list = this.dictService.listAll(example, MatchMode.ANYWHERE, null, null);
		StringBuilder sb = new StringBuilder();
		sb.append("[");
		if (list != null) {
			StringBuilder data = new StringBuilder();
			for (ComDict d : list) {
				data.append(data.length() > 0 ? "," : "");
				data.append("{\"id\":\"").append(d.getDictCode()).append("\",");
				data.append("\"text\":\"").append(d.getDictName()).append("\",");
				data.append("\"checked\":false,");
				data.append("\"open\":false}");
			}
			sb.append(data);
		}
		sb.append("]");
		outResponseJson(sb.toString());
	}

	public DictServiceImpl getDictService() {
		return dictService;
	}

	public void setDictService(DictServiceImpl dictService) {
		this.dictService = dictService;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	public ComDict getDict() {
		return dict;
	}
	public void setDict(ComDict dict) {
		this.dict = dict;
	}

	public ComDict getInDict() {
		return inDict;
	}

	public void setInDict(ComDict inDict) {
		this.inDict = inDict;
	}

}
