package com.tabeyo.service;

import java.util.List;

import com.tabeyo.domain.CouponVO;

public interface CouponService {
	public int register(CouponVO coupon);
	public int modify(CouponVO coupon);
	public int remove(Long couponNo);
	public List<CouponVO> getList(Long businNo);
	public CouponVO get(Long couponNo);
}
