/*
INS와 OUTS를 JOIN 한 후에, DATETIME의 차이를 기준으로 내림차순 정렬하였다. 
출력 동물은 상위 2개로 제한하였다.
*/
SELECT INS.ANIMAL_ID, INS.NAME
FROM ANIMAL_INS AS INS
JOIN ANIMAL_OUTS AS OUTS
ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
ORDER BY OUTS.DATETIME-INS.DATETIME DESC
LIMIT 2