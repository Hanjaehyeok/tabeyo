package com.tabeyo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tabeyo.domain.MenuVO;
import com.tabeyo.mapper.BusinMapper;
import com.tabeyo.mapper.MenuMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
public class MenuServiceImpl implements MenuService {
	@Setter(onMethod_ = @Autowired)
	private MenuMapper menuMapper;
	
	@Setter(onMethod_ = @Autowired)
	private BusinMapper businMapper;


	@Override
	public int modify(MenuVO menu) {
		log.info("MenuServiceImpl modify() menu : " + menu);
		return menuMapper.update(menu);
	}

	@Override
	public int remove(Long menuNo) {
		log.info("MenuServiceImpl remove() menuNo : " + menuNo);
		return menuMapper.delete(menuNo);
	}

	@Override
	public List<MenuVO> getList(Long businNo) {
		log.info("MenuServiceImpl...getList()");
		return menuMapper.getList(businNo);
	}

	@Override
	public int register(MenuVO menu) {
		
		log.info("menu register");
		return menuMapper.insertSelectKey(menu);
	}
	@Override
	public MenuVO get(Long menuNo) {
		log.info("ReplyServiceImpl get() rno : " + menuNo);
		return menuMapper.read(menuNo);
	}
	

}
