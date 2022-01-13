package kogfhj6.spring4.mvc.service;

import kogfhj6.spring4.mvc.dao.BoardDAO;
import kogfhj6.spring4.mvc.vo.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("bsrv")
public class BoardServiceImpl implements BoardService{


    @Autowired private BoardDAO bdao;

    //게시판 목록 조회
    @Override
    public List<BoardVO> readBoard(String cpage, String ftype, String fkey) {
        // 페이징 처리시 시작번호 계산
        int startnum = (Integer.parseInt(cpage)-1)*25;

        return bdao.selectBoard(startnum, ftype, fkey);
    }
    //게시물 총 갯수 조회
    @Override
    public int countBoard(String ftype, String fkey) {
        return bdao.countBoard(ftype, fkey);
    }


}
