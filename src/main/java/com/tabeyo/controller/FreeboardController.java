package com.tabeyo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/freeboard/*")
@AllArgsConstructor
public class FreeboardController {
	@GetMapping("/freeList")
	public void freeboardList(){
		log.info("FreeboardController - freeList ");
		
	}
	@GetMapping("/freeRegi")
	public void freeboardRegi(){
		log.info("FreeboardController - freeRegi ");
	}
	@GetMapping("/freeGet")
	public void freeboardModi(){
		log.info("FreeboardController - freeGet ");
	}
}
