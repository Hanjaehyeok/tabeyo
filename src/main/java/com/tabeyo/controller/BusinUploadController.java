package com.tabeyo.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.tabeyo.domain.BusinAttachVO;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/businUpload/")
public class BusinUploadController {

	
	//업로드 파일 검사 - 1,2 혹은 TF로 나눠 등록증사진과 대표사진을 구분하여 업로드한다
	private boolean checkImageType(File file) {
	
		return false;
	}//END checkImageType()

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
	
	//업로드파일 전송~
	@PostMapping("/uploadAjaxAction")
	@ResponseBody
	public ResponseEntity<List<BusinAttachVO>> 
			uploadAjaxAction(MultipartFile[] uploadFile) {
		log.info("UploadController uploadAjaxAction()");
		
		return new ResponseEntity<>(HttpStatus.OK);
	}//END uploadAjaxAction
	
	@GetMapping("/uploadAjax")
	public void uploadAjax() {
		log.info("UploadController uploadAjax()");
	}
	
	@PostMapping("/uploadFormAction")
	public void uploadFormPost(MultipartFile[] uploadFile, 
							   Model model) {
		log.info("UploadController uploadFormPost()");
		
		for (MultipartFile m : uploadFile) {
			log.info("------------------");
			log.info("upload file name : " + m.getOriginalFilename());
			log.info("upload file size : " + m.getSize());
			
			//파일 객체 생성
			File saveFile = new File("c:\\upload",
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
	
	@GetMapping("/uploadForm")
	public void uploadForm() {
		log.info("UploadController uploadForm()");
	}
}













