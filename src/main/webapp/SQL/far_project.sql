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

-- �޴� ��� ���̺�
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
    rep_menu varchar2(200)      -- ��ǥ�޴�
    -- (�޴� ��� �� üũ�ڽ�(or ����Ÿ��) ������ (1���� ����) ���⿡ �߰��� �Է� ��
    -- �������� ���� ��ܿ� ����
    
);





-- CEO ���̺�(��ϰ� �ִ� ���� ������)














