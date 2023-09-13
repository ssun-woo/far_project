-- Far_project DB 설계


-- 유저 테이블
create table member(
    mem_id varchar2(50) primary key,        -- 아이디
    mem_pwd varchar2(50) not null,          -- 비밀번호
    mem_email_id varchar2(60) not null,     -- 이메일 아이디
    mem_email_domain varchar2(60) not null, -- 이메일 도메인
    mem_tel varchar2(50) not null,          -- 전화번호
    mem_class varchar2(20) default 'm'     -- 회원등급(admin(a), CEO(c), member(m)
);




-- 리뷰테이블
create table review(
    mem_id varchar(50) not null,        -- 리뷰 단 사람 아이디
    store_num int not null,             -- 가게 고유번호
    review_cont varchar2(4000) not null,-- 리뷰 내용
    review_date varchar2(50) not null   -- 리뷰 날짜
);





-- 가게 정보 테이블(그 가게에 대한 정보들)
create table store(
    store_num int primary key,
    cate varchar2(50) not null,
    detail_cate varchar2(50) not null,
    store_pic01 varchar2(200) not null,
    store_pic02 varchar2(200),
    store_pic03 varchar2(200),
    store_pic04 varchar2(200),
    store_pic05 varchar2(200),
    reg_date varchar2(50) default sysdate
);

-- 메뉴 등록 테이블
create table menu(
    store_num int primary key,
    menu01 varchar2(200) not null,
    price01 varchar2(200) not null,
    menu02 varchar2(200),
    price02 varchar2(200),
    menu03 varchar2(200),
    price03 varchar2(200),
    menu04 varchar2(200),
    price04 varchar2(200),
    menu05 varchar2(200),
    price05 varchar2(200),
    menu06 varchar2(200),
    price06 varchar2(200),
    menu07 varchar2(200),
    price07 varchar2(200),
    menu08 varchar2(200),
    price08 varchar2(200),
    menu09 varchar2(200),
    price09 varchar2(200),
    menu10 varchar2(200),
    price10 varchar2(200),
    rep_menu varchar2(200)      -- 대표메뉴
    -- (메뉴 등록 시 체크박스(or 라디오타입) 누르면 (1개만 가능) 여기에 추가로 입력 및
    -- 상세페이지 가장 상단에 노출
    
);





-- CEO 테이블(운영하고 있는 가게 정보들)














