package com.mybusan.qna;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class QnACont {

	@Autowired
	private QnADAO dao;
	
	public QnACont() {
		System.out.println("------QnACont() 객체 생성됨");
	}
	
	
	
	@RequestMapping(value = "/qna/create.do", method= RequestMethod.GET)
		public ModelAndView createProc(@ModelAttribute QnADTO dto) {
		ModelAndView mav= new ModelAndView();
		
		int cnt=dao.create(dto);
		if(cnt==0) {
			mav.setViewName("qna/createForm");
			String msg1 = "<p>QnA 등록 실패</p>";
			String link1="<input type='button' value='다시시도' onclick='javascript:history.back()'>";
			String link2="<input type='button' value='QnA' onclick='location.href=\"/qna/create.do\"'>";
			mav.addObject("msg1", msg1);
			mav.addObject("link1", link1);
			mav.addObject("link2", link2);
		}else {
			mav.setViewName("qna/createForm");
		}//if end
		return mav;
	}//createProc() end
	
	
}
