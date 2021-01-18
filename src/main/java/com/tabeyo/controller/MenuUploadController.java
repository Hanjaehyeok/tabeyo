package com.tabeyo.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.util.List;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.tabeyo.domain.BusinAttachVO;
import com.tabeyo.service.BusinService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/busin/")
public class MenuUploadController {
	
	@GetMapping("/uploadAjax")
	public void uploadAjax() {
		log.info("upload Ajax");
	}
	
	
	
	
	@GetMapping("uploadForm")
	public void uploadForm() {
		log.info("upload Form");
		
	}//업로드 파일 데이터 전송
	@PostMapping("/uploadFormAction")
	public void uploadFormPost(MultipartFile[] uploadFile, 
							   Model model) {
		log.info("UploadController uploadFormPost()");
		
		for (MultipartFile m : uploadFile) {
			log.info("------------------");
			log.info("upload file name : " + m.getOriginalFilename());
			log.info("upload file size : " + m.getSize());
			
			//파일 객체 생성
			File saveFile = new File("C:\\upload",
									 m.getOriginalFilename());
			
			try {
				m.transferTo(saveFile);	//파일 업로드
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	

}













