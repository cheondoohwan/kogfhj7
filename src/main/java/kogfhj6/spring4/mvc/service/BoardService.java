package kogfhj6.spring4.mvc.service;

import kogfhj6.spring4.mvc.vo.BoardVO;

import java.util.List;

public interface BoardService {
    List<BoardVO> readBoard(String cpage, String ftype, String fkey);

    int countBoard(String ftype, String fkey);
}
