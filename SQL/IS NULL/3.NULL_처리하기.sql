/*
NAME이 NULL이면 No name으로 NAME을 변경한 후 출력하기
IFNULL(A, B) : 컬럼A 의 값이 NULL인 경우, B 값으로 대체한다.
*/
SELECT ANIMAL_TYPE, IFNULL(NAME, "No name"), SEX_UPON_INTAKE
FROM ANIMAL_INS