package kr.co.itwill.team_member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import kr.co.itwill.Team.TeamDTO;

@Controller
public class TMCont {

	@Autowired
	private TMDAO dao;
	
	public TMCont() {
		System.out.println("-----TMCont() 객체 생성됨");
	}
	
	 public ModelAndView TMlist() {
	        ModelAndView mav=new ModelAndView();
	        mav.setViewName("team/read");
	
	        int totalRowCount=dao.totalRowCount(); //총 글갯수
	        List<TMDTO> TMlist=dao.TMlist();
	        
	        mav.addObject("TMlist",  TMlist);
	        mav.addObject("count", totalRowCount);
	        
	        return mav;
	    }//list() end
}
