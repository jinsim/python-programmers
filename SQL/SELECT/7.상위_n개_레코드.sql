/*
ANIMAL_INS 테이블을 DATETIME 오름차순으로 정렬한 후, 가장 상위의 1개 요소의 NAME을 출력하기
*/
SELECT NAME
FROM ANIMAL_INS
ORDER BY DATETIME
LIMIT 1