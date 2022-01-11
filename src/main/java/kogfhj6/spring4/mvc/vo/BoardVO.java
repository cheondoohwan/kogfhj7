package kogfhj6.spring4.mvc.vo;

import lombok.*;

@Setter
@Getter
@NoArgsConstructor // 기본생성자
@AllArgsConstructor // 매개변수 포함 생성자
// @ToString
// @Data           // 위 5가지 속성을 모두 포함
public class BoardVO {
    private String bon;
    private String title;
    private String userid;
    private String regdate;
    private String thumbs;
    private String views;
    private String contents;

}
