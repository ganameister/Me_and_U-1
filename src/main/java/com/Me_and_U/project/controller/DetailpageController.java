package com.Me_and_U.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class DetailpageController {

	 
	  @RequestMapping("/comBkListGatherDetailpage")
	  public String comBkListGatherDetailpage(Model model) {
	 
	 return "jsp/comBkListGatherDetailpage"; }
	
	  /* 
	@RequestMapping("/comBkListGatherDetailpage/{comBkListGatherNo}")
	public String comBkListGatherDetailpage(@PathVariable String comBkListGatherNo, Model model) {
		ComBkListGatherVO cblg = service.detailpagecomBkListGather(comBkListGatherNo);
		model.addAttribute("cblg", cblg);
		return "jsp/comBkListGatherDetailpage";
	}
	
	  @RequestMapping("/product/detailViewProduct/{prdNo}")
	   public String detailViewProduct(@PathVariable String prdNo, Model model) { // 상품번호 전달하고 해당
	  상품 상세 정보 받아오기 (1개 상품에 관한 정보) ProductVO prd =
	  service.detailViewProduct(prdNo); model.addAttribute("prd", prd);
	  
	  return "product/productDetailView"; } 상세페이지
	 */

	@RequestMapping("/regGatherDetailpage")
	public String regGatherDetailpage(Model model) {

		return "jsp/regGatherDetailpage";
	}

	@RequestMapping("/temGatherDetailpage")
	public String temGatherDetailpage(Model model) {

		return "jsp/temGatherDetailpage";
	}
}
