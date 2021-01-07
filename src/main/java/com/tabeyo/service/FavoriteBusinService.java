package com.tabeyo.service;

import java.util.List;

import com.tabeyo.domain.FavoriteBusinVO;
import com.tabeyo.domain.Criteria;

public interface FavoriteBusinService {
	public void register(FavoriteBusinVO businFavorite);		//게시물 등록
	public boolean remove(Long businNo);			//게시물 삭제
	public List<FavoriteBusinVO> getList(Criteria cri);	//게시물 전체 조회 - 페이징
}
