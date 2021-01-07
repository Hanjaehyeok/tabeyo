package com.tabeyo.domain;

import lombok.Data;

@Data
public class MenuAttachVO {
	private String fileName;	//원본 파일명
	private String menuPath;	//업로드 경로
	private String uuid;		//UUID 값
	private Long menuNo;
}
