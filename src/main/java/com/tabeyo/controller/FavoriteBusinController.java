package com.tabeyo.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tabeyo.domain.FavoriteBusinVO;
import com.tabeyo.domain.MenuAttachVO;
import com.tabeyo.domain.MenuVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/favoriteBusin/*")
@AllArgsConstructor
public class FavoriteBusinController {
	
	@GetMapping("/get")//즐찾조회 조회
	public void get() {
		log.info("FavoriteBusinController...get() or modify()");
	
	}

	@PostMapping("/remove")		//즐찾 삭제
	public String remove() {
		log.info("FavoriteBusinController...remove()");
		return "제거";
	}

	@PostMapping("/register")		//즐찾 추가
	public String register(FavoriteBusinVO fb, RedirectAttributes rttr) {
		log.info("FavoriteBusinController...register()");
		
		return "추가";
	}
}
