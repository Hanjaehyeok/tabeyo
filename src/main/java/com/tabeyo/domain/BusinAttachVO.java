package com.tabeyo.domain;

import lombok.Data;

@Data
public class BusinAttachVO {
	private String fileName;	//원본 파일명
	private String businPath;	//업로드 경로
	private String uuid;		//UUID 값
	private Long businNo;
	private boolean fileType;	//1은 인증사진 2는 대표사진
}
