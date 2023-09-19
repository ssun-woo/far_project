-- Far_project DB ����


-- ���� ���̺�
create table member(
    mem_id varchar2(50) primary key,        -- ���̵�
    mem_pwd varchar2(50) not null,          -- ��й�ȣ
    mem_email_id varchar2(60) not null,     -- �̸��� ���̵�
    mem_email_domain varchar2(60) not null, -- �̸��� ������
    mem_tel varchar2(50) not null,          -- ��ȭ��ȣ
    mem_class varchar2(20) default 'm'     -- ȸ�����(admin(a), CEO(c), member(m)
);




-- �������̺�
create table review(
    mem_id varchar(50) not null,        -- ���� �� ��� ���̵�
    store_num int not null,             -- ���� ������ȣ
    review_cont varchar2(4000) not null,-- ���� ����
    review_date varchar2(50) not null   -- ���� ��¥
);





-- ���� ���� ���̺�(�� ���Կ� ���� ������)
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

-- ����(��) ��� ���̺�
create table menu(
    menu_id int primary key,
    store_num int not null,
    menu_name varchar2(255) not null,
    menu_explain varchar2(1000) not null,
    price number(8) not null,
    menu_photo varchar(255) not null,
    foreign key (store_num) REFERENCES store (store_num)
);

drop table rooms;








-- CEO ���̺�(��ϰ� �ִ� ���� ������)














