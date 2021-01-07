package com.tabeyo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.tabeyo.domain.BusinVO;
import com.tabeyo.domain.Criteria;

public interface FavoriteBusinMapper {

//전체 즐찾 수 가져오기
public int getTotalCount(Criteria cri);

//전체 즐찾 가져오기 - 페이징 구현
public List<BusinVO> getListWithPaging(Criteria cri);

//즐찾 취소
public int delete(Long businNo);

//즐찾 등록
public void insert(Long businNo);

}
