/*
ANIMAL_INS 테이블에서 INTAKE_CONDITION이 'Aged'가 아닌 로우의 ANIMAL_ID, NAME을 출력하기

!=를 넣어도 성능 상의 큰 차이가 없지만, 어차피 <> 로 자동 변환되어 사용된다. 
<>가 SQL 표준이고 !=는 비표준이지만 대부분의 DB에서 가능하다.
*/
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS 
WHERE INTAKE_CONDITION <> 'Aged'