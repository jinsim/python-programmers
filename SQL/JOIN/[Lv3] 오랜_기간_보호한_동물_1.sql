/*
들어온 날짜는 있지만, 입양돼서 나간 날짜는 없는 동물들 중 가장 오래 남은 3마리의 동물만 출력한다.
INS를 기준으로 OUTER JOIN을 하고, OUTS에서 NULL인 부분을 다 제외하면 INS에만 있고 OUTS에는 없는 행들로만 구성이 된다. 
ORDER BY를 해주고, LIMIT를 3으로 걸어주면, 상위 3개 요소만 출력이 된다.

LEFT (OUTER) JOIN을 하면 앞에 있는 테이블 기준으로 뒤에 있는 테이블을 가져온다. 이때, ON 조건을 만족하지 않는 경우(앞에 있는 테이블에는 값이 있지만 뒤에 있는 테이블에는 해당 값이 없는 경우)에도 앞에 있는 테이블의 값을 그대로 가져오고 뒤에 있는 테이블의 값은 NULL로 표시한다.
뒤에 WHERE 절로 기준으로 삼은 키값이 NULL인 경우만 가져오게 되면, 교집합인 부분이 날아가면서 차집합인 상태로 가져올 수 있다.
*/
SELECT INS.NAME, INS.DATETIME
FROM ANIMAL_INS AS INS
LEFT JOIN ANIMAL_OUTS AS OUTS
ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
WHERE OUTS.ANIMAL_ID IS NULL
ORDER BY INS.DATETIME
LIMIT 3