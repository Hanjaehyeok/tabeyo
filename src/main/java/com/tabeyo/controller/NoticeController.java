package com.tabeyo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/notice/*")
@AllArgsConstructor
public class NoticeController {
	@GetMapping("/noticeList")
	public void noticeList(){
		log.info("NoticeController - noticeList ");
		
	}
	@GetMapping("/noticeRegi")
	public void noticeRegi(){
		log.info("NoticeController - noticeRegi ");
	}
	
	@GetMapping("/noticeGet")
	public void noticeGet(){
		log.info("NoticeController - noticeGet ");
		
	}
	
}
