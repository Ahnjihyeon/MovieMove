계정명 : movie
비번 : move

drop table member; delete from member;
Select * from member;
-- 1.회원
create table member (
    member_id varchar2(15) primary key, -- 회원 ID
    memember_pwd varchar2(20) not null, -- 비번
    member_email varchar2(50) not null, -- 이메일
    member_name varchar2(15) not null, -- 이름
    member_nickname varchar2(20) not null, -- 닉네임
    member_age NUMBER(2) not null, -- 나이
    member_date date -- 가입일
);

insert into member values('11','11','11','11','11',11, sysdate );

drop table movie;
Select * from movie;
-- 2.영화
create table movie (
    movie_Code varchar2(20) primary key, -- 영화코드
    movie_Title varchar2(20) not null, -- 영화제목
    movie_year varchar2(50) , -- 영화년도
    movie_starPoint varchar2(15) , -- 영화평점
    movie_summary varchar2(20)  -- 영화줄거리
);
insert into movie values('11','11','11','11','11');


drop table review;
Select * from review;
-- 3.리뷰 게시판
create table review (
    review_id NUMBER primary key,  
    member_id varchar2(15) not null constraint member_id_FK references member(member_id),  
    movie_Code varchar2(20) not null constraint movie_Code_FK references movie(movie_code),  
    review_subject varchar2(90) not null,  
    review_content varchar2(900) not null,
    review_writeday DATE,
    review_starPoint NUMBER(2),
    review_count NUMBER,
    review_Pwd varchar(10)  
);
-- 리뷰 게시글 시퀀스 생성
create sequence movie_seq;
insert into review values( movie_seq.nextval, '11','11','11','11',sysdate,1,1,'111');





drop table likeCheck; delete from likeCheck;
Select * from likeCheck;
-- 4.좋아요
create table likeCheck (
    member_id VARCHAR2(15) , -- 회원ID
    review_id NUMBER , -- 글번호
    likeCheck_count NUMBER,  -- 좋아요
    constraint mem_id_rev_id_PK primary key(member_id, review_id),
    foreign key(member_id) references member(member_id),
    foreign key(review_id) references review(review_id)
);
insert into likeCheck values('11',1,2);
insert into likeCheck values('11',null,2);

-- 5.덧글
create table comments(
    comment_number NUMBER PRIMARY KEY,-- 댓글 번호
    ID VARCHAR2(15) NOT NULL, -- 작성자 ID
    COMMENT_CONTENT VARCHAR2(200) NOT NULL, -- 댓글 내용
    COMMNET_DATE DATE NOT NULL, -- 댓글 작성일
    REVIEW_COUNT NUMBER NOT NULL, -- 게시판번호
    
    CONSTRAINT COMMENT_FK FOREIGN KEY(ARTICLE_NUMBER) -- 글 지울때 리뷰지우기위한 변수
    REFERENCES REVIEW(REVIEW_COUNT) ON DELETE CASCADE
);

CREATE SEQUENCE COMMNET_SEQ START WITH 1 INCREMENT BY 1;
commit;