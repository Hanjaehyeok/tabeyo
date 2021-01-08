package com.tabeyo.mapper;

import java.util.List;

import com.tabeyo.domain.CouponVO;

public interface CouponMapper {


public int update(CouponVO coupon);

public int delete(Long couponNo);


public List<CouponVO> getList(Long businNo);

public int insertSelectKey(CouponVO coupon);

public CouponVO read(Long couponNo);
}
