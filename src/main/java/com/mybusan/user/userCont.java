package com.mybusan.user;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
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
    userDAO userDao;

    @RequestMapping(value = "/loginForm", method = RequestMethod.GET)
    public String loginFormG(){
        return "user/loginForm";
    }

    @RequestMapping(value = "/loginForm", method = RequestMethod.POST)
    public String loginFormP(){
        return "user/loginForm";
    }

    @RequestMapping(value = "/loginProc", method = RequestMethod.POST)
    public ModelAndView loginProcP(@RequestParam String l_user_id, @RequestParam String l_user_pw){
        ModelAndView mav = new ModelAndView();
        String password = userDao.login(l_user_id);

        if(password==null || !password.equals(l_user_pw)){
            System.out.println("F");
            mav.setViewName("user/loginForm");
            mav.addObject("loginfail", true);

        }
        else{
            System.out.println("S");
            mav.setViewName("user/myPage");
        }
        return mav;
    }


    @RequestMapping("/registerForm")
    public String registerForm(){
        return "user/registerForm";
    }

    @RequestMapping("/registerProc")
    public String registerProc(@RequestParam Map<String, Object> map, @RequestParam MultipartFile r_user_prop, HttpServletRequest req){
        String filename = "-";

        if(r_user_prop != null && !r_user_prop.isEmpty()){
            filename = r_user_prop.getOriginalFilename();

            try{
                ServletContext application = req.getSession().getServletContext();
                String path = application.getRealPath("/storage");
                r_user_prop.transferTo(new File(path+"/"+filename));
            }catch(Exception e){
                e.printStackTrace();
            }
        }

        String user_email = map.get("r_user_email_1")+"@"+map.get("r_user_email_2");
        String user_phone = map.get("r_user_phone_1")+"-"+map.get("r_user_phone_2")+"-"+map.get("r_user_phone_3");

        map.put("r_user_email",user_email);
        map.put("r_user_phone",user_phone);
        map.put("r_user_prop", filename);

        userDao.register(map);

        return "user/loginForm";
    }

    @ResponseBody
    @RequestMapping("/id_overlap")
    public String IDoverlapCheck(@RequestParam String r_user_id){
        if(userDao.idoverlap(r_user_id)==1){
            return "overlap";
        }
        else{
            return "Noverlap";
        }
    }


/*    @RequestMapping("/FindIDForm")
    public String FindIDForm(){
        return "user/FindIDForm";
    }

    @RequestMapping("/FindIDProc")
    public ModelAndView FindIdProc(@RequestParam String s_user_name){
        ModelAndView mav = new ModelAndView();

        userDao.FindID(s_user_name);

        return mav;
    }

    @RequestMapping("/FindIDResult")
    public ModelAndView FindIDResult(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("user/FindIDResult");

        return mav;
    }*/
}