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
    
    @RequestMapping("/update")
	public String update(@RequestParam Map<String, Object> map
		    			,@RequestParam MultipartFile img
		    			, HttpServletRequest req) {
		
		String filename= "-";
		long filesize = 0;
		if(img != null && !img.isEmpty()){
			filename=img.getOriginalFilename();
			filesize=img.getSize();
			try {
				ServletContext application=req.getSession().getServletContext();
				String path=application.getRealPath("/storage");
				img.transferTo(new File(path+"/"+filename));
				
			}catch (Exception e) {
				e.printStackTrace();
			}//try end 
		}else {
			String ce_sequence = map.get("ce_sequence").toString();
			Map<String, Object> board = boardDao.detail(ce_sequence);
			filename = board.get("ce_filename").toString();
			System.out.println(board);
            
		}//if end
		
		map.put("ce_filename", filename);
		map.put("filesize", filesize);
		boardDao.update(map);
		return "redirect:/board/list";
	}//update() end
    
    @RequestMapping("/delete")
	public String delete(int ce_sequence, HttpServletRequest req) {
		String filename=boardDao.filename(ce_sequence); //파일삭제
		if(filename != null && !filename.equals("-")) {
			ServletContext application=req.getSession().getServletContext();
			String path=application.getRealPath("/storage");
			File file=new File(path+"/"+filename);
			if(file.exists()) {
				file.delete();
			}//if end 
		}//if end
		boardDao.delete(ce_sequence);//행삭제
		return "redirect:/board/list";
	}//delete() end
}//class end