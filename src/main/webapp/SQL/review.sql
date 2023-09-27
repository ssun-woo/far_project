select * from review;   


SELECT * from review;  

select * from review order by review_num desc;      

commit;  

create table review(
    review_num int primary key,    --리뷰 글번호
    memId varchar(50) not null,        -- 리뷰 단 사람 아이디
    store_num int not null, --가게 고유 번호
    review_cont varchar2(4000) not null,	-- 리뷰 내용
    review_rating int not null, --평점
    review_recommend int default 0, --추천수 
    review_date date default sysdate   -- 리뷰 날짜
);   

create SEQUENCE num_seq
        INCREMENT by 1
        start with 1
        MINVALUE 1
        MAXVALUE 9999
        NOCYCLE
        NOCACHE
        NOORDER;
        
insert into review(review_num,store_num,memId,review_title, review_rating, review_cont, review_recommend,review_date)
 		values(NUM_SEQ.nextval,10,'abc123','친절하고 좋음',3.5,'굿',1,SYSDATE);     
        
drop table review;   

delete from review where review_num=257;   

update review set memid = 'bbb111' where review_num=255;
commit;    

drop table review;   

create table member (
    memId varchar2(50) primary key,
    memPwd varchar2(50) not null,
    memName varchar2(50) not null,
    memEmail varchar2(50) not null,
    memTel varchar2(50) not null,
    memclass varchar2(50) default 'Role_m',
    point number
); 

select * from member; 

create table store (
    storenum number primary key,
    cate varchar2(50) not null,
    detailcate varchar2(50) not null,
    storename varchar2(50) not null,
    storeintro varchar2(500) not null,
    storeaddr1 varchar2(50) not null,
    storeaddr2 varchar2(50) not null,
    regnum varchar2(50) not null,
    storelogo varchar2(100) not null,
    memid varchar2(50) not null,
    regdate date default sysdate,
    storescore number default 0,
    auth number default 0,
    FOREIGN KEY (memid) REFERENCES member(memid)
    ); 
    
CREATE TABLE coupon (
    couponName varchar2(500) primary key,
    couponDiscountrate number not null,
    couponStartDate date not null,
    couponEndDate date not null
); 
                     
CREATE TABLE couponpersonal (
    couponName varchar2(500) primary key,
    couponDiscountrate number not null,
    couponStartDate date not null,
    couponEndDate date not null,
    FOREIGN KEY (couponName) REFERENCES coupon(couponName)
); 

create table room (
    roomNum number primary Key,
    storeNum number not null,
    romname varchar2(50) not null,
    roomexplain varchar2(500) not null,
    roomprice number not null,
    roomphoto varchar2(100) not null,
    roomphoto2 varchar2(100) not null,
    standardnum number not null,
    maxnum number not null,
    checkin date not null,
    checkout date not null,
    FOREIGN KEY (storeNum) REFERENCES store(storeNum)
);
    
create table page (
    page number not null,
    maxpage number not null,
    startpage number not null,
    endpage number not null);
    
create table reservation (
    resvnum number primary key,
    storenum number not null,
    roomnum number not null,
    memid varchar2(50) not null,
    peoplenum number not null,
    startday date not null,
    endday date not null,
    FOREIGN KEY (memid) REFERENCES member(memid),
    FOREIGN KEY (roomnum) REFERENCES room(roomnum),
    FOREIGN KEY(storenum) REFERENCES store(storenum)
); 

create table review (
    reviewnum number primary key,
    memid varchar2(50) not null,
    storenum number not null,
    reviewcont varchar2(50) not null,
    reviewrating number not null,
    reviewrecommend number not null,
    reviewdate date not null,
    FOREIGN KEY (memid) REFERENCES member(memid),
    FOREIGN KEY(storenum) REFERENCES store(storenum)
); 

drop table review;

create table review (
    reviewnum number primary key,
    memid varchar2(50) not null,
    storenum number not null,
    reviewcont varchar2(50) not null,
    reviewrating number not null,
    reviewrecommend number DEFAULT 0,
    reviewdate date not null
); 
commit;

drop table review;


select * from jjim;

create table recommend(
    memId varchar2(50) not null,
    storeNum number not null,
    reviewNum number not null,
    recommendNo number not null
);           
drop table recommend;     
create SEQUENCE recommend_seq
        INCREMENT by 1
        start with 1
        MINVALUE 1
        MAXVALUE 9999
        NOCYCLE
        NOCACHE
        NOORDER; 
insert into recommend values(recommend_seq.nextval,'abc123',10,235);  
update review set reviewRecommend = 1+1 where reviewNum=303;
select * from recommend;     
select * from review;          
commit; 
update review set reviewRecommend = reviewRecommend + 1 where reviewNum=303 and storeNum=10; 
