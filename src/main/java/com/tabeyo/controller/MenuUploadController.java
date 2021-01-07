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
@RequestMapping("/menuUpload/")
public class MenuUploadController {
	
	
	//업로드파일 전송~
	@PostMapping("/uploadAjaxAction")
	@ResponseBody
	public ResponseEntity<List<BusinAttachVO>> 
			uploadAjaxAction(MultipartFile[] uploadFile) {
		log.info("UploadController uploadAjaxAction()");
		
		return new ResponseEntity<>(HttpStatus.OK);
	}//END uploadAjaxAction


	//첨부 파일 삭제
	@PostMapping("/deleteFile")
	@ResponseBody
	public ResponseEntity<String> deleteFile(String fileName, String type){
		log.info("deleteFile : " + fileName);
		File file = null;
		try {
			file = new File("c:\\upload\\" + URLDecoder.decode(fileName, "UTF-8"));
			file.delete();		//파일 삭제
			
			if(type.equals("image")) { //이미지이면 - s_ 제거
				String largeFileName = file.getAbsolutePath().replace("s_", "");
				file = new File(largeFileName);
				file.delete();			//원본 이미지 삭제
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
		return new ResponseEntity<String>("deleted", HttpStatus.OK);
	}
	
	

}













