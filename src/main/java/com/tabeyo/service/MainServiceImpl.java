package com.tabeyo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tabeyo.domain.BusinVO;
import com.tabeyo.mapper.BusinMapper;
import com.tabeyo.mapper.MainMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Service
@Log4j
public class MainServiceImpl implements MainService {
	@Setter(onMethod_ = @Autowired)
	private MainMapper mainMapper;
	
	public List<BusinVO> getList(String businFood){
		
		
		return mainMapper.getList(businFood);
	};
}
