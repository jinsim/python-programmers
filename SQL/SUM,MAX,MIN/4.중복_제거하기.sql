/*
DISTINCT는 옆에 온 모든 컬럼에 대한 중복을 제거한다.
NAME이 NULL인 값을 제외하고, NAME 중복을 제거한 행의 수를 반환한다.
*/
SELECT COUNT(DISTINCT NAME)
FROM ANIMAL_INS