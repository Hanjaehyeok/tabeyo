package com.tabeyo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tabeyo.domain.BusinVO;
import com.tabeyo.service.MainService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/main/*")
@AllArgsConstructor
@Log4j
public class MainController {
	private MainService mainService;
	@GetMapping("/main")
	public void main(BusinVO vo, Model model){
		log.info("UserController - userRegi");
		
		vo.setBusinFood("한식");
		model.addAttribute("hansik", mainService.getList(vo.getBusinFood()));
		
		vo.setBusinFood("일식");
		model.addAttribute("ilsik", mainService.getList(vo.getBusinFood()));
		
		vo.setBusinFood("중식");
		model.addAttribute("jungsik", mainService.getList(vo.getBusinFood()));
		
		vo.setBusinFood("양식");
		model.addAttribute("yangsik", mainService.getList(vo.getBusinFood()));
		
		vo.setBusinFood("기타");
		model.addAttribute("gita", mainService.getList(vo.getBusinFood()));
	}
}

