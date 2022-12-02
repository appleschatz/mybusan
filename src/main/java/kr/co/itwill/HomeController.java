package kr.co.itwill;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {
	
	public HomeController() {
		System.out.println("-----HomeController() 객체 생성됨");
	}//end

	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/list");
		return mav;
	}//home() end

}//class end
