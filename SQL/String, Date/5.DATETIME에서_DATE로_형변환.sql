/*
A349996	Sugar 2018-01-22 형식으로 출력한다.
DATE_FORMAT는 날짜를 지정한 형식으로 출력할 수 있도록 해준다.
*/
SELECT ANIMAL_ID, NAME, DATE_FORMAT(DATETIME, '%Y-%m-%d') AS "날짜"
FROM ANIMAL_INS