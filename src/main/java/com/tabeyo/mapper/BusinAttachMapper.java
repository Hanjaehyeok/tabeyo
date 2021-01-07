package com.tabeyo.mapper;

import java.util.List;

import com.tabeyo.domain.BusinAttachVO;

public interface BusinAttachMapper {
	
	
	
	public void insert(BusinAttachVO vo);
	public void update(BusinAttachVO vo);
	public List<BusinAttachVO> findByBusinNo(Long bno);
}
