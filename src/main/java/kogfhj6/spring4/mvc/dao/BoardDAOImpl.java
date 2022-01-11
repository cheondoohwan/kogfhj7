package kogfhj6.spring4.mvc.dao;

import kogfhj6.spring4.mvc.vo.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("bdao")
public class BoardDAOImpl implements BoardDAO {

    @Autowired private JdbcTemplate jdbcTemplate;
    @Value("#{sql['selectBoard']}") private String selectBoard;

    @Override
    public List<BoardVO> selectBoard() {
        Object[] params = new Object[] { };

        return jdbcTemplate.query(selectBoard, params,
                (rs, num) -> new BoardVO(
                        rs.getString("bno"),
                        rs.getString("title"),
                        rs.getString("userid"),
                        rs.getString("regdate"),
                        rs.getString("thumbs"),
                        rs.getString("views"),
                        null ));
    }
}
