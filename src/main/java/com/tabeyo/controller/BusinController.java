package com.tabeyo.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tabeyo.domain.BusinAttachVO;
import com.tabeyo.domain.BusinVO;
import com.tabeyo.service.BusinService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/busin/*")
@AllArgsConstructor
public class BusinController{
	private BusinService businService;
	
	
	@GetMapping("/modify")		//
	public void modify(@RequestParam("businNo") Long businNo, 
				    Model model) {
		log.info("BusinController..modify");
		model.addAttribute("busin", businService.get(businNo));
	}
	
	@GetMapping("/get" )		//
	public void get(@RequestParam("businNo") Long businNo, 
				    Model model) {
		log.info("BusinController...get()");
		model.addAttribute("busin", businService.get(businNo));
	}
	

	@PostMapping("/modify")		
	public String modify(BusinVO busin, 
					     RedirectAttributes rttr) {
		log.info("BoardController...modify()" + busin);
		
		 if(businService.modify(busin)) { 
			 rttr.addFlashAttribute("result", "success");
		 } 
		 return "redirect:/busin/get?businNo=" + busin.getBusinNo();
//		rttr.addAttribute("pageNum", cri.getPageNum());
//		rttr.addAttribute("amount", cri.getAmount());
//		rttr.addAttribute("type", cri.getType());
//		rttr.addAttribute("keyword", cri.getKeyword());
		
	}
	
	
	@GetMapping("/regiGet")		//
	public void regiGet(@RequestParam("businNo") Long businNo, 
				    Model model) {
		log.info("BusinController...get()");
		model.addAttribute("busin", businService.get(businNo));
	}
	
	@GetMapping("/menuList")		//
	public void menuList(@RequestParam("businNo") Long businNo, 
				    Model model) {
		log.info("BusinController...get()");
		model.addAttribute("busin", businService.get(businNo));
	}
	
	@GetMapping("/couponList")		//
	public void couponList(@RequestParam("businNo") Long businNo, 
				    Model model) {
		log.info("BusinController...get()");
		model.addAttribute("busin", businService.get(businNo));
	}
	
	
	
	
	@GetMapping("/regiList")
	public void regiList(Model model) {
		log.info("busin RegiList");
		
		model.addAttribute("list", businService.getList());
	}
	
	
	@GetMapping("/list")
	public void list(Model model) {
		log.info("busin List");
		
			model.addAttribute("list", businService.getList());
	}
	
	
	
	@GetMapping("/getAttachList") 
	@ResponseBody
		public ResponseEntity<List<BusinAttachVO>> getAttachList(Long bno){
			log.info("BusinController...getAttachList()");
			return new ResponseEntity<>(HttpStatus.OK);
		}


	@GetMapping("/register")		
	public void register() {
		log.info("BusinController...register()");
		
	}
	@PostMapping("/register")
	public String register(BusinVO busin, RedirectAttributes rttr) {
		log.info("BusinController... register()");
		businService.register(busin);
		rttr.addFlashAttribute("result", busin.getBusinNo());
		return "redirect:/busin/regiList";
	}
	@PostMapping("/remove")		
	public String remove() {
		log.info("BusinController...remove()");
		return "redirect:/busin/list";
	}
}
