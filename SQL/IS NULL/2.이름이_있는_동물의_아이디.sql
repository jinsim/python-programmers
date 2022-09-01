/*
NAME이 있는 동물의 ID를 출력한다. (이때 ID는 오름차순 정렬)
해당 컬럼 값이 존재하는 경우, IS NOT NULL을 사용한다.
*/
SELECT ANIMAL_ID
FROM ANIMAL_INS
WHERE NAME IS NOT NULL
ORDER BY ANIMAL_ID