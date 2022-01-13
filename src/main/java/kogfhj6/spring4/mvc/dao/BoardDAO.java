package kogfhj6.spring4.mvc.dao;

import kogfhj6.spring4.mvc.vo.BoardVO;

import java.util.List;

public interface BoardDAO {

    List<BoardVO> selectBoard(int startnum, String findtype, String findkey);

    int countBoard(String findtype, String findkey);
}
