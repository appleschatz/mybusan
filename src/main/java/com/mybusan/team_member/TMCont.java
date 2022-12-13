//package com.mybusan.team_member;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.mybusan.team.TeamDTO;
//
//@Controller
//public class TMCont {
//
//	@Autowired
//	private TMDAO dao;
//	
//	public TMCont() {
//		System.out.println("-----TMCont() 객체 생성됨");
//	}
//	
////	 @RequestMapping(value = "TMcreate.do", method = RequestMethod.POST)
////	    public ModelAndView createProc(@ModelAttribute TeamDTO dto) {
////	        ModelAndView mav=new ModelAndView();
////	        mav.setViewName("team/read");
////	
////	        int totalRowCount=dao.totalRowCount(); //총 글갯수
////	       // List<TMDTO> TMlist=dao.TMlist();
////	        
////	       // mav.addObject("TMlist",  TMlist);
////	        mav.addObject("count", totalRowCount);
////	        
////	        int cnt=dao.TMcreate(dto);
////	        if(cnt==0) {
////	            mav.setViewName("team/createForm");//???
////	            String msg1 ="<p>팀 등록 실패</p>";
////	            String img  ="<img src='../images/fail.png'>";
////	            String link1="<input type='button' value='다시시도' onclick='javascript:history.back()'>";
////	            String link2="<input type='button' value='그룹목록' onclick='location.href=\"list.do\"'>";
////	            mav.addObject("msg1",  msg1);
////	            mav.addObject("img",   img);
////	            mav.addObject("link1", link1);
////	            mav.addObject("link2", link2);
////	        }else {
////	            mav.setViewName("redirect:/list.do");
////	        }//if end
////	        return mav;
////	    }//createProc() end
//	
//}
