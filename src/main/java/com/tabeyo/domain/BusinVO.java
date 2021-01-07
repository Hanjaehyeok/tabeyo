package com.tabeyo.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class BusinVO {
	private String userId;
	private Long businNo;
	private Long lisenceNo;
	private String businNm;
	private String businAddr;
	private String businAddr2;
	private String businAddr3;
	private Long businTel;
	private String businClosedDay;
	private String businFood;
	private Long businScale;
	private String businOpen;
	private String businClosed;
	private String businPark;
	private List<BusinAttachVO> attachList;
	private String businEtc;
	private Date regdate; 
	private Long reviewCnt; 
	private Long reviewAdd; 

}
