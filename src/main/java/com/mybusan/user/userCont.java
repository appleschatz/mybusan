package com.mybusan.user;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@Controller
public class userCont {
    @Autowired
    userDAO userdao;

    @RequestMapping("/") // * 지워도 됨
    public String Home(){
        return "user/loginForm";
    }

    @RequestMapping(value = "/loginForm")
    public String loginForm(){
        return "user/loginForm";
    }

    @RequestMapping(value = "/loginProc", method = RequestMethod.POST)
    public ModelAndView loginProc(userDTO userdto, HttpServletRequest request, HttpServletResponse response, HttpSession session){
        ModelAndView mav = new ModelAndView();

        if (session.getAttribute("login") != null){
            // 기존에 login이란 세션 값이 존재한다면
            session.removeAttribute("login"); // 기존값을 제거해 준다
        }

        userDTO dto = userdao.loginCheck(userdto); // 로그인 확인 과정

        if(dto != null){ // 로그인 성공한 경우
            session.setAttribute("login",dto);
            mav.setViewName("redirect:/"); // * 홈으로 이동
            if(request.getParameter("save_id") != null){ // 아이디 저장에 체크한 경우
                Cookie cookie = new Cookie("saved_id", dto.getUser_id());
                cookie.setMaxAge(60*60*24*10); // 10일 동안 아이디 보관
                response.addCookie(cookie);
            }
        }
        else{ // 로그인 실패한 경우
            mav.addObject("loginfail", true);
            mav.setViewName("redirect:/loginForm");
        }

        return mav;
    }

    @RequestMapping(value = "/registerForm")
    public String registerForm(){
        return "user/registerForm";
    }


    @RequestMapping(value = "/registerProc", method = RequestMethod.POST)
    public String registerProc(userDTO userdto, HttpServletRequest req){
        String user_prop = "-";
        MultipartFile prop_file = userdto.getProp_file();

        if(prop_file != null && !prop_file.isEmpty()){
            user_prop = prop_file.getOriginalFilename();
            try{
                ServletContext application = req.getSession().getServletContext();
                String path = application.getRealPath("/storage");
                prop_file.transferTo(new File(path+"/"+user_prop));
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        userdto.setUser_prop(user_prop);
        userdao.register(userdto);
        return "user/loginForm";
    }

    @ResponseBody
    @RequestMapping("/id_overlap.do")
    public int idOverlapCheck(userDTO userdto){
        if(userdao.idOverlapCheck(userdto)==1){ // 중복된 경우
            return 1;
        }
        else{
            return 0;
        }
    }

    @ResponseBody
    @RequestMapping("/email_overlap.do")
    public int emailOverlapCheck(userDTO userdto){
        if(userdao.emailOverlapCheck(userdto)==1){ // 중복된 경우
            return 1;
        }
        else{
            return 0;
        }
    }

    @ResponseBody
    @RequestMapping("/phone_overlap.do")
    public int phoneOverlapCheck(userDTO userdto){
        if(userdao.phoneOverlapCheck(userdto)==1){ // 중복된 경우
            return 1;
        }
        else{
            return 0;
        }
    }
}
