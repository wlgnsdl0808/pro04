create table board(seq int primary key,
title varchar2(100) not null,
content varchar2(800) not null,
nickname varchar2(20),
regdate date,
visited int
);

select * from board;
select * from board where seq=2;
commit; 

insert into board values(1, '샘플 글 제목1입니다.', '여기는 샘플 글1에 대한 내용입니다.', 'admin', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '샘플2 제목입니다.', '샘플글 2 여기는 샘플 글1에 대한 내용입니다.', 'admin', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '샘플3 제목입니다.', '샘플글 3 여기는 샘플 글1에 대한 내용입니다.', 'admin', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '샘플4 제목입니다.', '샘플글 4 여기는 샘플 글1에 대한 내용입니다.', 'admin', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '샘플5 제목입니다.', '샘플글 5 여기는 샘플 글1에 대한 내용입니다.', 'admin', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '샘플6 제목입니다.', '샘플글 6 여기는 샘플 글1에 대한 내용입니다.', 'admin', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '샘플7 제목입니다.', '샘플글 7 여기는 샘플 글1에 대한 내용입니다.', 'admin', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '샘플8 제목입니다.', '샘플글 8 여기는 샘플 글1에 대한 내용입니다.', 'admin', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '샘플9 제목입니다.', '샘플글 9 여기는 샘플 글1에 대한 내용입니다.', 'admin', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '샘플10 제목입니다.', '샘플글 10 여기는 샘플 글1에 대한 내용입니다.', 'admin', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '샘플11 제목입니다.', '샘플글 11 여기는 샘플 글1에 대한 내용입니다.', 'admin', sysdate, 0);

commit;

update board set title=?, content=?, nickname=?, regdate=sysdate where seq=?;

delete from board where seq=?;

commit;

-- 파일 첨부가 가능한 자유 게시판
create table free(bno int primary key,  -- 글번호
title varchar2(100) not null,   -- 글제목
content varchar2(1500) not null,    -- 글내용
regdate date,   -- 작성일
visited int,    -- 조회수
id varchar2(20),    -- 작성자
rec int -- 추천수
);

create table member(id varchar2(20) primary key,
pw varchar2(300) not null,
name varchar2(50),
email varchar2(100) not null,
tel varchar2(20) not null,
addr1 varchar2(200),
addr2 varchar2(100),
postcode varchar2(10),
regdate date default sysdate,
birth date,
pt int default 100,
visited int default 0
);

desc mem; 
select to_char(regdate, 'yyyy-MM-dd HH24:mi:ss') as cdate from mem;
-- alter table modify birth varchar2();

commit;
select * from mem;

delete from mem where userid='admin';

commit;

-- 자료실(자료번호, 자료제목, 자료내용, 자료이미지, 자료파일, 자료출력모드, 자료등록일)
create table databank (
    datano number primary key,
    dtitle varchar2(255) not null,
    dcontent varchar2(1000),
    dposter varchar2(255),
    dfilename varchar2(255),
    dview char(1) default 'Y',
    regdate date default sysdate
);

select * from databank;

-- 묻고 답하기_qna(글번호, 작성자, 글제목, 글내용, 작성일, 읽어본 횟수, 글그룹번호, 답변수준, 글깊이)
create table qna(
    qno number primary key,
    qauthor varchar2(100) not null,
    qtitle varchar2(255) not null,
    qcontent varchar2(1000) not null,
    regdate date default sysdate,
    qhit number default 0,
    qgroup number,
    qstep number,
    qindent number
);

CREATE TABLE qna(
    qno         NUMBER PRIMARY KEY,
    qtitle       VARCHAR2(300) NOT NULL,
    qcontent     VARCHAR2(4000) NOT NULL,
    qwriter      VARCHAR2(20) NOT NULL,
    qwritedate   DATE DEFAULT SYSDATE,
    qreadcnt     NUMBER DEFAULT 0,
    qroot        NUMBER,
    qstep        NUMBER default 0,
    qindent      NUMBER default 0 
);

CREATE SEQUENCE seq_qna START WITH 1 INCREMENT BY 1;


COMMIT;

select * from qna;

-- 진료예약 - 본인의 진료과목에 따라 다르게 적용
create table reservate(
    rno number primary key,
    rauthor varchar2(100)
);

-- 접속자 정보 저장 테이블
CREATE TABLE db_info (
  no number primary key,
  request_uri varchar(100),
  query_string varchar(200),
  remote_address varchar(30),
  server_name varchar(60),
  server_port varchar(10),
  locale varchar(20),
  browser varchar(200),
  referer varchar(255),
  session_id varchar(80),
  user_id varchar(20),
  response_time number,
  reg_date date default sysdate
);

commit;

-- drop table db_access;

select * from db_access;

create table useafter(uno number primary key,
gno number,
userid varchar2(20),
subject varchar2(100),
content varchar2(800),
regdate date default sysdate,
visited number default 0);