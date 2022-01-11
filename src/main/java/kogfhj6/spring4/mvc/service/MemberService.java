package kogfhj6.spring4.mvc.service;

import kogfhj6.spring4.mvc.vo.MemberVO;

public interface MemberService {
    int checkUserid(String uid);

    String findZipcode(String dong);

    boolean newMember(MemberVO mvo);

    boolean loginMember(MemberVO mvo);
}
