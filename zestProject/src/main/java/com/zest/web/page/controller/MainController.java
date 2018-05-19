package com.zest.web.page.controller;


import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


//메인페이지 컨트롤러 
@Controller
public class MainController {
	
	//메인페이지 
	@RequestMapping(value="/main")
	public ModelAndView viewMainPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("main/main");	
		return modelAndView;	
	}
		
	@RequestMapping(value="/main/{category}")
	@ResponseBody
	public List<String> viewCategory(@PathVariable String category ) {
		List<String> categoryList = new ArrayList<>();
		
		
		// 메뉴별 카테고리 변환
		if(category.equals("sprots")) {
			String[] sports = {"피트니스", "요가", "축구", "농구", "수영", "클라이밍", "사격"};
			Collections.addAll(categoryList, sports);
		
		}else if(category.equals("beauty")) {
			String[] beauty = {"메이크업", "헤어", "퍼스널컬러", "패션"};
			Collections.addAll(categoryList, beauty);

		}else if(category.equals("music")) {
			String[] music = {"보컬", "랩", "피아노", "기타", "디제잉", "작곡", "국악", "악기"};
			Collections.addAll(categoryList, music);
	
		}else if(category.equals("food")) {
			String[] food = {"한식", "중식", "양식", "베이커리", "술/음료"};
			Collections.addAll(categoryList, food);

		}else if(category.equals("beauty")) {
			String[] design = {"포토샵", "프리미어", "에프터이펙트", "일러스트레이터", "영상", "제품디자인", "인디자인","UX/XI","시포디", "3D"};
			Collections.addAll(categoryList, design);

		}else if(category.equals("business")) {
			String[] business = {"엑셀", "DataScience", "파워포인트", "건축", "창업", "회계", "마케팅", "기획", "공모",};
			Collections.addAll(categoryList, business);
			
		}else if(category.equals("language")) {
			String[] language = {"eng", "jap", "cha", "con", "founded", "acct", "mkt", "plan", "coll",};
			Collections.addAll(categoryList, language);
		
		}
		
		return categoryList;
	}
}
