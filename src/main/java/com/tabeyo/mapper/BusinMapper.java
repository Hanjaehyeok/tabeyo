package com.tabeyo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.tabeyo.domain.BusinVO;
import com.tabeyo.domain.Criteria;

public interface BusinMapper {

public int update(BusinVO busin);

public BusinVO read(Long businNo);

public List<BusinVO> getList();

public int delete(Long businNo);

public void insertSelectKey(BusinVO busin);
}