package com.mybusan.place;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PlaceCont {

	@Autowired
	private PlaceDAO dao;
	
	public PlaceCont() {
		System.out.println("-----------PlaceCont() 객체생성됨");
	}
	
	//http://localhost:9095/place/list.do
	
	@RequestMapping("/place/list.do")
	public ModelAndView list() {
		
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("googlemap");	
		
		List<PlaceDTO> list =dao.list();
		mav.addObject("list", list);
		
		return mav;
	}//list() end
	
	}
	
	

