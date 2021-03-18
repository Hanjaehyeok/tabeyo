package com.tabeyo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/search/*")
@AllArgsConstructor
@Log4j
public class SearchController {
	@GetMapping("/searchMain")
	public void main(){
		log.info("SearchController searchMain");
	}
}
