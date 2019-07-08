������ : movie
��� : move

drop table member; delete from member;
Select * from member;
-- 1.ȸ��
create table member (
    member_id varchar2(15) primary key, -- ȸ�� ID
    memember_pwd varchar2(20) not null, -- ���
    member_email varchar2(50) not null, -- �̸���
    member_name varchar2(15) not null, -- �̸�
    member_nickname varchar2(20) not null, -- �г���
    member_age NUMBER(2) not null, -- ����
    member_date date -- ������
);

insert into member values('11','11','11','11','11',11, sysdate );

drop table movie;
Select * from movie;
-- 2.��ȭ
create table movie (
    movie_Code varchar2(20) primary key, -- ��ȭ�ڵ�
    movie_Title varchar2(20) not null, -- ��ȭ����
    movie_year varchar2(50) , -- ��ȭ�⵵
    movie_starPoint varchar2(15) , -- ��ȭ����
    movie_summary varchar2(20)  -- ��ȭ�ٰŸ�
);
insert into movie values('11','11','11','11','11');


drop table review;
Select * from review;
-- 3.���� �Խ���
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
-- ���� �Խñ� ������ ����
create sequence movie_seq;
insert into review values( movie_seq.nextval, '11','11','11','11',sysdate,1,1,'111');





drop table likeCheck; delete from likeCheck;
Select * from likeCheck;
-- 4.���ƿ�
create table likeCheck (
    member_id VARCHAR2(15) , -- ȸ��ID
    review_id NUMBER , -- �۹�ȣ
    likeCheck_count NUMBER,  -- ���ƿ�
    constraint mem_id_rev_id_PK primary key(member_id, review_id),
    foreign key(member_id) references member(member_id),
    foreign key(review_id) references review(review_id)
);
insert into likeCheck values('11',1,2);
insert into likeCheck values('11',null,2);

-- 5.����
create table comments(
    comment_number NUMBER PRIMARY KEY,-- ��� ��ȣ
    ID VARCHAR2(15) NOT NULL, -- �ۼ��� ID
    COMMENT_CONTENT VARCHAR2(200) NOT NULL, -- ��� ����
    COMMNET_DATE DATE NOT NULL, -- ��� �ۼ���
    REVIEW_COUNT NUMBER NOT NULL, -- �Խ��ǹ�ȣ
    
    CONSTRAINT COMMENT_FK FOREIGN KEY(ARTICLE_NUMBER) -- �� ���ﶧ ������������� ����
    REFERENCES REVIEW(REVIEW_COUNT) ON DELETE CASCADE
);

CREATE SEQUENCE COMMNET_SEQ START WITH 1 INCREMENT BY 1;
commit;