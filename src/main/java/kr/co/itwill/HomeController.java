package kr.co.itwill;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	
	public HomeController() {
		System.out.println(" -----HomeController jojo()객체 생성 됨 ");
	}

	//결과확인 http://localhost:9095/home.do
	//mymelon 프로젝트의 첫페이지 호출 명령어 등록
		//결과확인 http://localhost:9095/home.do
		
		@RequestMapping("/home.do")
		public ModelAndView home() {
			ModelAndView mav=new ModelAndView();
			//redirect : 등록한 명렁어를 호출할 수 있Da
			mav.setViewName("redirect:/list.do");
			return mav;
		}//home() end
	
	
}//class end
