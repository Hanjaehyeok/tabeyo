package com.tabeyo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tabeyo.domain.BusinAttachVO;
import com.tabeyo.domain.BusinVO;
import com.tabeyo.mapper.BusinMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Service
@Log4j
public class BusinServiceImpl implements BusinService {
	@Setter(onMethod_ = @Autowired)
	private BusinMapper businMapper;
	
	@Override
	public List<BusinAttachVO> getAttachList(Long businNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void register(BusinVO busin) {
		businMapper.insertSelectKey(busin);
		log.info("register... : " + busin);
	}
	
	@Override
	public boolean modify(BusinVO busin) {
		log.info("BoardServiceImpl...modify()");
		
		boolean modifyResult = businMapper.update(busin) == 1;	//게시물 수정
		
		
		return modifyResult;
	}

	@Override
	public BusinVO get(Long businNo) {
		log.info("BusinServiceImpl...get()");
		return businMapper.read(businNo);
	}
	
	@Override //검색결과 목록 ( 검색설정 전 전체리스트 검색 코딩 하면 검색만)
	public List<BusinVO> getList() {
		// TODO Auto-generated method stub
		log.info("BusinServiceImpl...getList()");
		return businMapper.getList();
	}

	@Override
	public void remove(Long busin) {
		// TODO Auto-generated method stub
		
	}

}
