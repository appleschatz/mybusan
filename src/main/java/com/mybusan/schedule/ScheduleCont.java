package com.mybusan.schedule;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class ScheduleCont {

	@Autowired
    private ScheduleDAO dao;
	
	public ScheduleCont() {
		System.out.println("-----scheduleCont() 객체 생성됨");
	}
	
//	 @RequestMapping(value = "team/create.do", method = RequestMethod.GET)
//	    public String createForm() {
//	        return "team/createForm";
//	    }//createForm() end
//	 
//	 @RequestMapping(value = "team/create.do", method = RequestMethod.POST)
//	    public ModelAndView createProc(@ModelAttribute TeamDTO dto) {
//	        ModelAndView mav=new ModelAndView();
//	       
//	        int cnt=dao.create(dto);
//	        if(cnt==0) {
//	            mav.setViewName("team/createForm");//???
//	            String msg1 ="<p>팀 등록 실패</p>";
//	            String img  ="<img src='../images/fail.png'>";
//	            String link1="<input type='button' value='다시시도' onclick='javascript:history.back()'>";
//	            String link2="<input type='button' value='그룹목록' onclick='location.href=\"list.do\"'>";
//	            mav.addObject("msg1",  msg1);
//	            mav.addObject("img",   img);
//	            mav.addObject("link1", link1);
//	            mav.addObject("link2", link2);
//	        }else {
//	            mav.setViewName("redirect:/list.do");
//	        }//if end
//	        return mav;
//	    }//createProc() end
//	
//	
//	 @RequestMapping("team/list.do")
//	    public ModelAndView list() {
//	        ModelAndView mav=new ModelAndView();
//	        mav.setViewName("team/list");
//	
//	        int totalRowCount=dao.totalRowCount(); //총 글갯수
//	        List<TeamDTO> list=dao.list();
//	        
//	        mav.addObject("list",  list);
//	        mav.addObject("count", totalRowCount);
//	        
//	        return mav;
//	    }//list() end
//	 
//	 @RequestMapping("team/read.do")
//	    public ModelAndView read(int team_no) {
//	        ModelAndView mav=new ModelAndView();
//	        mav.setViewName("team/read");
//	        TeamDTO dto=dao.read(team_no);
//	       
//	        
//	        mav.addObject("dto", dto);
//	        return mav;
//	    }//read() end
//	 
//	 @RequestMapping(value = "team/delete.do", method = RequestMethod.GET)
//	    public ModelAndView deleteForm(int team_no) {
//	        ModelAndView mav=new ModelAndView();
//	        mav.setViewName("team/deleteForm");
//	        mav.addObject("team_no", team_no);
//	        return mav;
//	    }//deleteForm() end
//	 
//	 @RequestMapping(value = "team/delete.do", method = RequestMethod.POST)
//	    public ModelAndView deleteProc(int team_no) {
//	        ModelAndView mav=new ModelAndView();
//	        
//	        int cnt=dao.delete(team_no);
//	        if(cnt==0) {
//	            mav.setViewName("team/msgView");
//	            String img  ="<img src='../images/fail.png'>";
//	            String link1="<input type='button' value='다시시도' onclick='javascript:history.back()'>";
//	            String link2="<input type='button' value='그룹목록' onclick='location.href=\"list.do\"'>";
//	            mav.addObject("msg1", "<p>팀 삭제 실패!!</p>");  
//	            mav.addObject("img",   img);
//	            mav.addObject("link1", link1);
//	            mav.addObject("link2", link2);
//	        }else {
//	            mav.setViewName("redirect:/list.do");
//	        }//if end
//	        
//	        return mav;
//	    }//deleteForm() end
//	 
//	 @RequestMapping(value="team/update.do", method = RequestMethod.GET)
//	    public ModelAndView updateForm(int team_no) {
//	        ModelAndView mav=new ModelAndView();
//	        mav.setViewName("team/updateForm");
//	        //mav.addObject("root", Utility.getRoot());
//	        mav.addObject("dto", dao.read(team_no));
//	        return mav;
//	    }//updateForm() end
//	 
//	 @RequestMapping(value="team/update.do", method = RequestMethod.POST)
//	    public ModelAndView updateProc(@ModelAttribute TeamDTO dto) {
//	        ModelAndView mav=new ModelAndView();
//	        
//	        int cnt=dao.update(dto);
//	        if(cnt==0) {
//	            mav.setViewName("team/msgView");
//	            String img  ="<img src='../images/fail.png'>";
//	            String link1="<input type='button' value='다시시도' onclick='javascript:history.back()'>";
//	            String link2="<input type='button' value='그룹목록' onclick='location.href=\"list.do\"'>";
//	            mav.addObject("msg1", "<p>팀 수정 실패!!</p>");  
//	            mav.addObject("img",   img);
//	            mav.addObject("link1", link1);
//	            mav.addObject("link2", link2);
//	        }else {
//	            mav.setViewName("redirect:/list.do");
//	        }//if end
//	        
//	        return mav;
//	    }//updateProc() end
//	 
//	 @RequestMapping(value="teammember/updatestate.do", method = RequestMethod.POST)
//	    public ModelAndView updatestate(@ModelAttribute TeamDTO dto) {
//	        ModelAndView mav=new ModelAndView();
//	        
//	        int cnt=dao.updatestate(dto);
//	        if(cnt==0) {
//	            mav.setViewName("team/msgView");
//	            String img  ="<img src='../images/fail.png'>";
//	            String link1="<input type='button' value='다시시도' onclick='javascript:history.back()'>";
//	            String link2="<input type='button' value='그룹목록' onclick='location.href=\"list.do\"'>";
//	            mav.addObject("msg1", "<p>팀 수정 실패!!</p>");  
//	            mav.addObject("img",   img);
//	            mav.addObject("link1", link1);
//	            mav.addObject("link2", link2);
//	        }else {
//	            mav.setViewName("redirect:/list.do");
//	        }//if end
//	        
//	        return mav;
//	    }//updateProc() end
}
