--login table �ۼ�
CREATE TABLE BOARD(
    ID NUMBER,
    SUBJECT NVARCHAR2(100),
    CONTENT CLOB,
    WRITER NVARCHAR2(50),
    REGDATE TIMESTAMP DEFAULT SYSDATE
);

INSERT INTO BOARD VALUES('759', '����', '�ȳ��ϼ���','�λ�����','2020-06-16');

SELECT * FROM BOARD;