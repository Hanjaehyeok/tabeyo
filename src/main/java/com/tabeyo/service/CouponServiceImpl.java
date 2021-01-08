package com.tabeyo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tabeyo.domain.CouponVO;
import com.tabeyo.mapper.CouponMapper;
import com.tabeyo.mapper.MenuMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Service
@Log4j

public class CouponServiceImpl implements CouponService {
	@Setter(onMethod_ = @Autowired)
	private CouponMapper couponMapper;

	
	@Override
	public int register(CouponVO coupon) {
		log.info("CouponServiceImpl register");
		return couponMapper.insertSelectKey(coupon);
	}

	@Override
	public int modify(CouponVO coupon) {
		log.info("CouponServiceImpl modify() coupon : " + coupon);
		return couponMapper.update(coupon);
	}

	@Override
	public int remove(Long couponNo) {
		log.info("CouponServiceImpl remove() menuNo : " + couponNo);
		return couponMapper.delete(couponNo);
	}

	@Override
	public List<CouponVO> getList(Long businNo) {
		log.info("CouponServiceImpl...getList()");
		return couponMapper.getList(businNo);
	}

	@Override
	public CouponVO get(Long couponNo) {
		log.info("CouponServiceImpl get() coupon : " + couponNo);
		return couponMapper.read(couponNo);
	}

}
