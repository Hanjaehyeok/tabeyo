package com.tabeyo.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.tabeyo.domain.CouponVO;
import com.tabeyo.service.CouponService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@RestController
@Log4j
@RequestMapping("/coupon/")
@AllArgsConstructor
public class CouponController {

	private CouponService couponService;

	//댓글 목록으로 받는다 
	@GetMapping(value = "/list/{businNo}",
			produces = { MediaType.APPLICATION_XML_VALUE
						,MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<CouponVO>>getList(
			/* public ResponseEntity<ReplyPageDTO>getList( */
			@PathVariable("businNo")Long businNo){
		log.info("getList.............");
		return new ResponseEntity<>(couponService.getList(businNo),HttpStatus.OK);
		//return new ResponseEntity<>(service.getListPage(cri, bno),HttpStatus.OK);
		}
	
	@PostMapping(value="/new",	        //URL /리플라이스/뉴였기떄문에 여기서 써준다 
			 consumes ="application/json",	     //넘어오는데이터는 json이야 
	  produces ={MediaType.TEXT_PLAIN_VALUE,
			  MediaType.APPLICATION_XML_VALUE})   	// post밸류를 받아야 해서
	public ResponseEntity<String> create(@RequestBody CouponVO vo){
		log.info("ReplyController create vo : " + vo);
		int insertCount = couponService.register(vo);
		log.info("REPLY INSERT COUNT : " + insertCount);
		//성공이면 200 실패면 500 반환 
		
		return insertCount == 1 ?new ResponseEntity<>("success" , HttpStatus.OK)
								:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR); 
		
	}
	@DeleteMapping(value = "{couponNo}" )//번호만 받으면 된다. 메소드 delete
	public ResponseEntity<String> remove(@PathVariable("couponNo")Long couponNo)
	{
		log.info("remove : " + couponNo);
		
		return couponService.remove(couponNo) == 1 ? new ResponseEntity<>("success" , HttpStatus.OK)
										: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@RequestMapping(method = {RequestMethod.PUT,RequestMethod.PATCH},
			value = "/{couponNo}",
			consumes = "application/json",
			produces={ MediaType.TEXT_PLAIN_VALUE } )
	public ResponseEntity<String> modify(
	@RequestBody CouponVO vo,
	@PathVariable("couponNo") Long CouponNo){
		
	      log.info("couponController couponNo : " + CouponNo);
	      log.info("couponController modify : " + vo);
	      vo.setCouponNo(CouponNo);
	      int modifyCount =  couponService.modify(vo);   //댓글 수정
	      log.info("REPLY MODIFY COUNT : " + modifyCount);

		return couponService.modify(vo) == 1  
		?new ResponseEntity<>("success" , HttpStatus.OK)
		:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
}
	
	  @GetMapping("/{couponNo}")   
	   public ResponseEntity<CouponVO> get(@PathVariable("couponNo") Long couponNo) {
	      log.info("CouponController get : " + couponNo);

	      return new ResponseEntity<>(couponService.get(couponNo), HttpStatus.OK);
	   }
	/*
	 
	 * @GetMapping("/getAttachList")
	 * 
	 * @ResponseBody public ResponseEntity<List<MenuAttachVO>> getAttachList(Long
	 * bno){ log.info("MenuController...getAttachList()"); return new
	 * ResponseEntity<>(HttpStatus.OK); }
	 * 
	 * @PostMapping("/remove") public String remove() {
	 * log.info("MenuController...remove()"); return "redirect:/menu/list"; }
	 * 
	 * @PostMapping("/modify") public String modify() {
	 * log.info("MenuController...modify()");
	 * 
	 * return "redirect:/menu/list"; }
	 * 
	 * @GetMapping("/list") public void register() {
	 * log.info("BusinController...register()");
	 * 
	 * }
	 * 
	 * 
	 * // @PostMapping("/list") // public String register(CouponVO CouponVO,
	 * RedirectAttributes rttr) { // log.info("BusinController... register()"); //
	 * menuService.register(CouponVO); // rttr.addFlashAttribute("result",
	 * CouponVO.get); // return "redirect:/menu/list"; // }
	 */

}