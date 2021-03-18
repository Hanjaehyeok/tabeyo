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
public class UserController {
	@GetMapping("/userRegi")
	public void userRegi(){
		log.info("UserController - userRegi");
	}
	@GetMapping("/userList")
	public void userList(){
		log.info("UserController - userRegi");
	}
	@GetMapping("/userGet")
	public void userModi(){
		log.info("UserController - userRegi");
	}
}
