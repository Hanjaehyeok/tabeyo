package com.tabeyo.service;

import java.util.List;

import com.tabeyo.domain.MenuVO;

public interface MenuService {
	public int register(MenuVO menu);
	public int modify(MenuVO menu);
	public int remove(Long menuNo);
	public List<MenuVO> getList(Long businNo);
	public MenuVO get(Long menuNo);
}
