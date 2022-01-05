package kogfhj6.spring4.mvc.dao;

import kogfhj6.spring4.mvc.vo.ZipcodeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("mdao")
public class MemberDAOImpl implements MemberDAO {

    @Value("#{sql['selectOneUserid']}") private String selectOneUserid;
    @Value("#{sql['findZipcode']}") private String findZipcode;

    @Autowired private JdbcTemplate jdbcTemplate;

    //아이디 중복체크
    @Override
    public int selectOneUserid(String uid) {
        Object[] params = new Object[] {uid};
        return jdbcTemplate.queryForObject(selectOneUserid, params, Integer.class);
    }

    //우편번호 검색색
    @Override
    public List<ZipcodeVO> selectZipcode(String dong) {
        Object[] params = new Object[] {dong};

        return jdbcTemplate.query(findZipcode, params,
                (rs, num) -> new ZipcodeVO(
                        rs.getString("zipcode"),
                        rs.getString("sido"),
                        rs.getString("gugun"),
                        rs.getString("dong"),
                        rs.getString("ri") )
        );
    }
}
