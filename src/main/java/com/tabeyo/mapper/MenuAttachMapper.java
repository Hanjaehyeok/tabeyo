package com.tabeyo.mapper;

import java.util.List;

import com.tabeyo.domain.BusinAttachVO;
import com.tabeyo.domain.MenuAttachVO;

public interface MenuAttachMapper {
	public List<MenuAttachVO> getOldFiles();
	public void update(MenuAttachVO vo);
	public void insert(MenuAttachVO vo);
	public void delete(String uuid);
	public List<BusinAttachVO> findByBusinNo(Long MenuNo);
}
