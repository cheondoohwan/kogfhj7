create table board (
   bno int primary key,
   title varchar(150) not null,
   userid varchar(18) not null,
    regdate timestamp default sysdate,
    thumbs int default 0,
    views int default 0,
    contents clob not null
);

create sequence bdseq nocache;



DECLARE
cnt number := 1;

begin
    loop
insert into board (bno, title, userid, contents)
        values (bdseq.nextval, '이것은 첫번째 글입니다!', 'kogfhj6', '오로치마루 아이유');

insert into board (bno, title, userid, contents)
values (bdseq.nextval, '이것은 두번째 글입니다!', 'abc123', '스프링4 이클립스 인텔리제이');

insert into board (bno, title, userid, contents)
values (bdseq.nextval, '이것은 세번째 글입니다!', 'kogfhj7', 'JSP EL JSTL Oracle');

exit when cnt > 1110;
        cnt := cnt + 1;
end loop;
end;



select * from board;

select count(bno) from board;

