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
    @Value("#{sql['countBoard']}") private String countBoard;
    @Value("#{sql['pagingBoard']}") private String pagingBoard;

    // 페이징 기능이 포함된 게시판 목록 조회
   @Override
    public List<BoardVO> selectBoard(int startnum, String ftype, String fkey) {
        Object[] params = new Object[] { startnum };

        //조건에 따라 동적(dynamic) 질의문(query) 작성 - 조건이 없는 경우
        String dynaSQL= selectBoard + pagingBoard;
        String whereSQL ="";

       //조건이 있는 경우
       if(ftype != null && fkey != null) {
            //whereSQL = " where " + ftype + " = " + fkey
            whereSQL = String.format(" where %s like '%s' ", ftype, '%' + fkey + '%');
            dynaSQL = selectBoard + whereSQL + pagingBoard;
        }

        return jdbcTemplate.query(dynaSQL, params,
                (rs, num) -> new BoardVO(
                        rs.getString("bno"),
                        rs.getString("title"),
                        rs.getString("userid"),
                        rs.getString("regdate"),
                        rs.getString("thumbs"),
                        rs.getString("views"),
                        null ));
    }

    //게시물 총수 조회
    @Override
    public int countBoard(String ftype, String fkey){

        //조건에 따라 동적(dynamic) 질의문(query) 작성 - 조건이 없는 경우
        String dynaSQL= countBoard;
        String whereSQL ="";

        //조건이 있는 경우
        if(ftype != null && fkey != null) {
            //whereSQL = " where " + ftype + " = " + fkey
            whereSQL = String.format(" where %s like '%s' ", ftype, '%' + fkey + '%');
            dynaSQL = countBoard + whereSQL;
        }

       return jdbcTemplate.queryForObject(
               dynaSQL, Integer.class);
    }
}
