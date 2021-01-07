package com.tabeyo.mapper;

import java.util.List;

import com.tabeyo.domain.MenuVO;

public interface MenuMapper {


public int update(MenuVO menu);

public int delete(Long menuNo);


public List<MenuVO> getList(Long businNo);

public int insertSelectKey(MenuVO menu);

public MenuVO read(Long menuNo);
}
