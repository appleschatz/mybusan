package kr.co.itwill.board;


import java.io.File;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/board")
public class boardCont {

    public boardCont() {
        System.out.println("----boardCont() 객체 생성됨");
    }//end
    
    @Autowired
    boardDAO boardDao;
  
    @RequestMapping("/list")		//게시글 작성 화면 호출
    public ModelAndView list() {
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("/board/list");
    	mav.addObject("list",boardDao.list());
    	return mav;
    }//list() end
    
    @RequestMapping("/create.do")
    public String create() {
    	return "board/createform";
    }//create() end	
    
    
    @RequestMapping("/insert")
	public String insert(@RequestParam Map<String, Object> map
					    ,@RequestParam MultipartFile img
					    , HttpServletRequest req) {
	String filename = "-";
	long filesize = 0;
	if (img != null && !img.isEmpty()) {
		filename = img.getOriginalFilename();
		filesize = img.getSize();
		try {
			ServletContext application = req.getSession().getServletContext();
			String path = application.getRealPath("/storage");
			img.transferTo(new File(path + "/" + filename));
		} catch (Exception e) {
			e.printStackTrace();
		}//try end
	}//if end
	map.put("ce_filename", filename);
	map.put("filesize", filesize);
	boardDao.insert(map);
	return "redirect:/board/list";
	}//insert() end;
    
    
    @RequestMapping("/search")
	public ModelAndView search(@RequestParam(defaultValue = "") String ce_name) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("board/list");
		mav.addObject("list" , boardDao.search(ce_name));
		mav.addObject("ce_name", ce_name);
		return mav;
	}//search() end
    
    @RequestMapping("/detail/{ce_sequence}")
	public ModelAndView detail(@PathVariable String ce_sequence) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("board/detail");
		mav.addObject("board" , boardDao.detail(ce_sequence));
		return mav;
	}//detail() end
}//class end