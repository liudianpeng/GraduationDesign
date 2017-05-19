package com.xkd.entity;

import java.util.Date;
import java.util.List;

/**
 * 方向常量表
 * 
 * @author RBB
 *
 */
public class BaseDirection extends BaseConfig {
	private Integer			id;

	private String			name;

	private Date			creattime;

	private Date			updatetime;

	private String			state;
	private List<BaseUser>	userList;

	public List<BaseUser> getUserList() {
		return userList;
	}

	public void setUserList(List<BaseUser> userList) {
		this.userList = userList;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	public Date getCreattime() {
		return creattime;
	}

	public void setCreattime(Date creattime) {
		this.creattime = creattime;
	}

	public Date getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state == null ? null : state.trim();
	}

}