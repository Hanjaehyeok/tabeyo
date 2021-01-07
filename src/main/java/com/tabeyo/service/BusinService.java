package com.tabeyo.service;

import java.util.List;

import com.tabeyo.domain.BusinAttachVO;
import com.tabeyo.domain.BusinVO;

public interface BusinService {
	public void register(BusinVO busin);	
	public List<BusinAttachVO> getAttachList(Long businNo); 	
	public boolean modify(BusinVO busin);		
	public BusinVO get(Long businNo);			
	public List<BusinVO> getList();				
	public void remove(Long busin);

}
