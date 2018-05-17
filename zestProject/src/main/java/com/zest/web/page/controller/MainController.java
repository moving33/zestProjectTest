package com.zest.web.page.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
}
