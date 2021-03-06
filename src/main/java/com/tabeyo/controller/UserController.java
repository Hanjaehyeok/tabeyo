package com.tabeyo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/user/*")
@AllArgsConstructor
@Log4j
public class UserController {
	@GetMapping("/userRegi")
	public void userRegi(){
		log.info("UserController - userRegi");
	}
	@GetMapping("/userFind")
	public void userFind(){
		log.info("UserController - userFind");
	}
	@GetMapping("/userGet")
	public void userGet(){
		log.info("UserController - userGet");
	}
}
