package kogfhj6.spring4.mvc.controller;

import kogfhj6.spring4.mvc.service.BoardService;
import kogfhj6.spring4.mvc.utils.GoogleCaptchaUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {

    private BoardService bsrv;
    private GoogleCaptchaUtil gcutil;

    @Autowired // 생성자를 이용한 스프링 객체 주입
    public BoardController(BoardService bsrv, GoogleCaptchaUtil gcutil) {
        this.bsrv = bsrv;
        this.gcutil = gcutil;
    }

    //목록보기
    @GetMapping("/board/list")
        public ModelAndView list(ModelAndView mv){

        mv.setViewName("board/list.tiles");
        mv.addObject("bd", bsrv.readBoard());

        return mv;
    }

    //본문보기
    @GetMapping("/board/view")
    public String view(){

        return "board/view.tiles";
    }

    //새글쓰기
    @GetMapping("/board/write")
    public String write(){

        return "board/write.tiles";
    }

}
