package kogfhj6.spring4.mvc.controller;

import kogfhj6.spring4.mvc.service.MemberService;
import kogfhj6.spring4.mvc.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class indexController {

    @Autowired
    private MemberService msrv;

//    @GetMapping("/index")
//    public String index(Model m){
//        m.addAttribute("msg", "Hello,World!!");
//        return "index";
//    }

    @GetMapping("/")
    public String index(Model m) {

        return "index.tiles";
    }

    //로그인 처리
    //로그인 성공 -> 초기화면으로이동
    //로그인 실패 -> 로그인실패화면으로 이동
    @PostMapping("/login")
    public String login(MemberVO mvo, HttpSession sess) {
        String returnPage = "redirect:/loginfail";

        if (msrv.loginMember(mvo)) {
            sess.setAttribute("uid", mvo.getUserid());
            returnPage = "redirect:/";
        }

        return returnPage;
    }

    //로그인 실패
    @GetMapping("/loginfail")
    public String loginfail(Model m) {

        return "loginfail.tiles";
    }

    //로그아웃 성공
    @PostMapping("/logout")
    public String logOut(HttpSession sess){
        String returnPage = "redirect:/";
        return returnPage;
    }



}




















