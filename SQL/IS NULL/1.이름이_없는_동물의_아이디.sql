/*
NAME이 없는 동물의 ID를 출력한다. (이때 ID는 오름차순 정렬)
해당 컬럼 값이 비어져있는 경우, IS NULL을 사용한다.
*/
SELECT ANIMAL_ID
FROM ANIMAL_INS
WHERE NAME IS NULL
ORDER BY ANIMAL_ID