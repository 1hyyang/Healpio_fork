-- ���̺� ����
drop table exercise;
drop table review;
drop table reservation;
drop table scrap;
drop table class;
drop table member;
drop table location;
drop table my_table;
drop table ATTACH;
-- ������ ����
DROP SEQUENCE seq_member;
DROP SEQUENCE seq_EXERCISE;
DROP SEQUENCE seq_CLASS;
DROP SEQUENCE seq_reservation;
DROP SEQUENCE seq_review;
DROP SEQUENCE seq_scrap;
DROP SEQUENCE SEQ_LOCATION;

  -- ������ ����
  CREATE SEQUENCE seq_location
  START WITH 1
  INCREMENT BY 1
  MAXVALUE 99999
  NOCACHE
  NOCYCLE;
  
  CREATE SEQUENCE seq_member
  START WITH 1
  INCREMENT BY 1
  MAXVALUE 99999
  NOCACHE
  NOCYCLE;
  
   CREATE SEQUENCE seq_exercise
  START WITH 1
  INCREMENT BY 1
  MAXVALUE 99999
  NOCACHE
  NOCYCLE;
  
   CREATE SEQUENCE seq_class
  START WITH 1
  INCREMENT BY 1
  MAXVALUE 99999
  NOCACHE
  NOCYCLE;
  
  CREATE SEQUENCE seq_review
  START WITH 1
  INCREMENT BY 1
  MAXVALUE 99999
  NOCACHE
  NOCYCLE;
  
  CREATE SEQUENCE seq_reservation
  START WITH 1
  INCREMENT BY 1
  MAXVALUE 99999
  NOCACHE
  NOCYCLE;
  
  CREATE SEQUENCE seq_scrap
  START WITH 1
  INCREMENT BY 1
  MAXVALUE 99999
  NOCACHE
  NOCYCLE;
  
CREATE TABLE ATTACH(
    UUID VARCHAR2(100) PRIMARY KEY,
    class_no varchar2(20) not null,
    uploadpath varchar2(200) not null ,
    filename varchar2(100) not null,
    filetype char(1) DEFAULT 'I',
    CONSTRAINT fk_attach_class_no FOREIGN KEY (class_no) REFERENCES class(class_no)
    
);


--location �������̺� ����
CREATE TABLE location (
    location_no varchar2(20) primary key
    , class_no varchar2(20) not null
    , province VARCHAR2(20)
    , city VARCHAR2(20)
    , district VARCHAR2(20)
    ,CONSTRAINT fk_location_class_no FOREIGN KEY (class_no) REFERENCES class(class_no)
);


--member ���̺� ����
create table member(		
	member_no	varchar2(20) primary key
	, member_id	VARCHAR2(50)	NOT NULL		
	, member_pw	VARCHAR2(200)	NOT NULL		
    , member_name	VARCHAR2(20)	NOT NULL
	, eMail	VARCHAR2(50)	NOT NULL
	, nickName	VARCHAR2(20)	NOT NULL		
	, teacherYN	CHAR(1) DEFAULT 'N' CHECK (teacherYN IN('Y','N'))	
	, adminYN	CHAR(1) DEFAULT 'N' CHECK (adminYN IN('Y','N'))	
	, phoneNumber	VARCHAR2(20)	NOT NULL
);

--exercise ���̺� ����					
create table exercise(				
    exercise_no	 varchar2(20)  primary key
    , exercise_name	VARCHAR2(20)   not null
);




--class ���̺� ����
create table class(
	class_no	varchar2(20)	primary key	
    , member_no	 varchar2(20)	NOT NULL
    , exercise_no varchar2(20) NOT NULL
	, class_title	VARCHAR2(200)		
	, class_content	VARCHAR2(2000)		
	, class_introduce	VARCHAR2(200)		
	, class_regdate	DATE default sysdate		
	, teacher_content	VARCHAR2(2000)		
	, class_attach	VARCHAR2(1000)		
	, class_maxCount	NUMBER
	, class_price	VARCHAR2(50)
    , class_day varchar2(20)
    , class_time varchar2(20)
    , CONSTRAINT fk_class_exercise_no FOREIGN KEY (exercise_no) REFERENCES exercise(exercise_no)
    , CONSTRAINT fk_class_member_no FOREIGN KEY (member_no) REFERENCES member(member_no)
);



COMMIT;

--review ���̺� ����
create table review(
	review_no varchar2(20) primary key
	, member_no varchar2(20) NOT NULL
	, class_no varchar2(20) NOT NULL
	, review_regdate DATE DEFAULT sysdate NOT NULL
	, review_content VARCHAR2(200)
	, review_star NUMBER
    , CONSTRAINT fk_review_member_no FOREIGN KEY (member_no) REFERENCES member(member_no)
    , CONSTRAINT fk_review_class_no FOREIGN KEY (class_no) REFERENCES class(class_no)
);


--reservation ���̺� ����					
create table reservation(
	reservation_no	varchar2(20)	primary key		
	, member_no	varchar2(20)	NOT NULL		
	, class_no	varchar2(20)	NOT NULL		
	, reservation_date	varchar2(20)
	, reservation_time	VARCHAR2(20)
    , reservation_regdate	DATE
    , CONSTRAINT fk_reservation_member_no FOREIGN KEY (member_no) REFERENCES member(member_no)
	, CONSTRAINT fk_reservation_class_no FOREIGN KEY (class_no) REFERENCES class(class_no)
);




--scrap ���̺� ����
create table scrap(
	scrap_no	varchar2(20)	primary key		
	, class_no	varchar2(20)	NOT NULL		
	, member_no	varchar2(20)	NOT NULL
    , CONSTRAINT fk_scrap_class_no FOREIGN KEY (class_no) REFERENCES class(class_no)
    , CONSTRAINT fk_scrap_member_no FOREIGN KEY (member_no) REFERENCES member(member_no)
);



--member ���̺� ������
INSERT INTO MEMBER VALUES ('M' || LPAD(SEQ_MEMBER.NEXTVAL, 6, '0'),'member1', 'password', 'Kim', 'kim@email.com', 'kim', 'N', 'N', '010-1234-5678');
INSERT INTO MEMBER VALUES ('M' || LPAD(SEQ_MEMBER.NEXTVAL, 6, '0'),'member2', 'password', 'Lee', 'lee@email.com', 'lee', 'Y', 'N', '010-2345-6789');
INSERT INTO MEMBER VALUES ('M' || LPAD(SEQ_MEMBER.NEXTVAL, 6, '0'),'member3', 'password', 'Park', 'park@email.com', 'park', 'N', 'N', '010-3456-7890');
INSERT INTO MEMBER VALUES ('M' || LPAD(SEQ_MEMBER.NEXTVAL, 6, '0'),'member4', 'password', 'Choi', 'choi@email.com', 'choi', 'N', 'N', '010-4567-8901');
INSERT INTO MEMBER VALUES ('M' || LPAD(SEQ_MEMBER.NEXTVAL, 6, '0'),'member5', 'password', 'Jung', 'jung@email.com', 'jung', 'Y', 'N', '010-5678-9012');
INSERT INTO MEMBER VALUES ('M' || LPAD(SEQ_MEMBER.NEXTVAL, 6, '0'),'member6', 'password', 'hong', 'hong@email.com', 'hong', 'Y', 'N', '010-5678-9012');


--exercise ���̺� ������
INSERT INTO EXERCISE (EXERCISE_NO, EXERCISE_NAME) VALUES ('E' || LPAD(SEQ_EXERCISE.NEXTVAL, 6, '0'),'�䰡');
INSERT INTO EXERCISE (EXERCISE_NO, EXERCISE_NAME) VALUES ('E' || LPAD(SEQ_EXERCISE.NEXTVAL, 6, '0'),'�ʶ��׽�');
INSERT INTO EXERCISE (EXERCISE_NO, EXERCISE_NAME) VALUES ('E' || LPAD(SEQ_EXERCISE.NEXTVAL, 6, '0'),'���');
INSERT INTO EXERCISE (EXERCISE_NO, EXERCISE_NAME) VALUES ('E' || LPAD(SEQ_EXERCISE.NEXTVAL, 6, '0'),'����κ�');
INSERT INTO EXERCISE (EXERCISE_NO, EXERCISE_NAME) VALUES ('E' || LPAD(SEQ_EXERCISE.NEXTVAL, 6, '0'),'�౸');
INSERT INTO EXERCISE (EXERCISE_NO, EXERCISE_NAME) VALUES ('E' || LPAD(SEQ_EXERCISE.NEXTVAL, 6, '0'),'ǲ��');
INSERT INTO EXERCISE (EXERCISE_NO, EXERCISE_NAME) VALUES ('E' || LPAD(SEQ_EXERCISE.NEXTVAL, 6, '0'),'�籸');
INSERT INTO EXERCISE (EXERCISE_NO, EXERCISE_NAME) VALUES ('E' || LPAD(SEQ_EXERCISE.NEXTVAL, 6, '0'),'�ｺ');
INSERT INTO EXERCISE (EXERCISE_NO, EXERCISE_NAME) VALUES ('E' || LPAD(SEQ_EXERCISE.NEXTVAL, 6, '0'),'ũ�ν���');


--class ���̺� ������
INSERT INTO CLASS VALUES ('C' || LPAD(SEQ_CLASS.NEXTVAL, 6, '0'), 'M000003','E000002', '�䰡 ����', '�⺻���� �䰡 ������ ���ϴ�', '�ʱ� �䰡', SYSDATE, '�����Կ� ���� �Ұ�', NULL, 20, '����', '2023-08-20', '14:00');
INSERT INTO class VALUES ('C' || LPAD(SEQ_CLASS.NEXTVAL, 6, '0'), 'M000006','E000003', '�ʶ��׽� ����', '�ʶ��׽� ��� ���ϴ�', '�ʱ� �ʶ��׽�', SYSDATE, '�����Կ� ���� �Ұ�', NULL, 15, '1����','2023-08-20', '15:00');
INSERT INTO class VALUES ('C' || LPAD(SEQ_CLASS.NEXTVAL, 6, '0'), 'M000007','E000004', '��� ����', '����ϴ� ����� ���ϴ�', '�ʺ��ڸ� ���� ���', SYSDATE, '�����Կ� ���� �Ұ�', NULL, 10, '1.5����','2023-08-20', '16:00');
INSERT INTO class VALUES ('C' || LPAD(SEQ_CLASS.NEXTVAL, 6, '0'), 'M000007','E000006', '�౸ ����', '��Ŭ�� ����ġ�� ���ڼ�', '�ʺ��ڸ� ���� �౸', SYSDATE, '�����Կ� ���� �Ұ�', NULL, 10, '1.5����','2023-08-20', '17:00');
INSERT INTO CLASS VALUES ('C' || LPAD(SEQ_CLASS.NEXTVAL, 6, '0'), 'M000003','E000010', 'ũ�ν���', '��ް� ��սô�.', 'ũ�ν���', SYSDATE, '�����Կ� ���� �Ұ�', NULL, 20, '����', '2023-08-01', '14:00');

--review ���̺� ������
INSERT INTO REVIEW VALUES ('r' || LPAD(SEQ_review.NEXTVAL, 6, '0'), 'M000002', 'C000002', SYSDATE, '������ ���� ���ҽ��ϴ�!', 5);
INSERT INTO REVIEW VALUES ('r' || LPAD(SEQ_review.NEXTVAL, 6, '0'), 'M000002', 'C000003', SYSDATE, '������ ���� ���ҽ��ϴ�!', 5);
INSERT INTO REVIEW VALUES ('r' || LPAD(SEQ_review.NEXTVAL, 6, '0'), 'M000003', 'C000004', SYSDATE, '������ ���� ���ҽ��ϴ�!', 5);
INSERT INTO REVIEW VALUES ('r' || LPAD(SEQ_review.NEXTVAL, 6, '0'), 'M000004', 'C000005', SYSDATE, '������ ���� ���ҽ��ϴ�!', 5);


--reservation ���̺� ������
INSERT INTO RESERVATION VALUES ('R' || LPAD(SEQ_RESERVATION.NEXTVAL, 6, '0'), 'M000002', 'C000002', '2023-08-20', '14:00', sysdate);
INSERT INTO RESERVATION VALUES ('R' || LPAD(SEQ_RESERVATION.NEXTVAL, 6, '0'), 'M000003', 'C000002','2023-08-20', '14:00', sysdate);
INSERT INTO RESERVATION VALUES ('R' || LPAD(SEQ_RESERVATION.NEXTVAL, 6, '0'), 'M000004', 'C000003', '2023-08-20', '15:00', sysdate);
INSERT INTO RESERVATION VALUES ('R' || LPAD(SEQ_RESERVATION.NEXTVAL, 6, '0'), 'M000004', 'C000006', '2023-08-01', '12:00', sysdate);
INSERT INTO RESERVATION VALUES ('R' || LPAD(SEQ_RESERVATION.NEXTVAL, 6, '0'), 'M000005', 'C000004','2023-08-20', '16:00', sysdate);
INSERT INTO RESERVATION VALUES ('R' || LPAD(SEQ_RESERVATION.NEXTVAL, 6, '0'), 'M000006', 'C000005','2023-08-20', '17:00', sysdate);

--scrap ���̺� ������
INSERT INTO SCRAP VALUES ('S' || LPAD(SEQ_SCRAP.NEXTVAL, 6, '0'), 'C000002', 'M000002');
INSERT INTO SCRAP VALUES ('S' || LPAD(SEQ_SCRAP.NEXTVAL, 6, '0'), 'C000003', 'M000002');
INSERT INTO SCRAP VALUES ('S' || LPAD(SEQ_SCRAP.NEXTVAL, 6, '0'), 'C000004', 'M000003');
INSERT INTO SCRAP VALUES ('S' || LPAD(SEQ_SCRAP.NEXTVAL, 6, '0'), 'C000005', 'M000003');
INSERT INTO SCRAP VALUES ('S' || LPAD(SEQ_SCRAP.NEXTVAL, 6, '0'), 'C000005', 'M000004');
INSERT INTO SCRAP VALUES ('S' || LPAD(SEQ_SCRAP.NEXTVAL, 6, '0'), 'C000002', 'M000004');
INSERT INTO SCRAP VALUES ('S' || LPAD(SEQ_SCRAP.NEXTVAL, 6, '0'), 'C000003', 'M000004');

COMMIT;

-- location ���̺� ������
INSERT INTO location VALUES ('L' || LPAD(SEQ_LOCATION.NEXTVAL, 6, '0'), 'C000002', '��⵵', '���� ���籸', '��ŵ�');
INSERT INTO location VALUES ('L' || LPAD(SEQ_LOCATION.NEXTVAL, 6, '0'), 'C000003', '��⵵', '���� �ϻ굿��', '���ε�');
INSERT INTO location VALUES ('L' || LPAD(SEQ_LOCATION.NEXTVAL, 6, '0'), 'C000004', '����', '������', '���ﵿ');

-- ATTACH ���̺� ������
INSERT INTO ATTACH VALUES ('UUID', 'C000002', 'PATH', 'image', 'I');


commit;