/*
INS와 OUTS 모두에 값이 있어야 하므로 INNER JOIN을 한다. ID를 ON으로 잡는다.
입양일보다 들어온 날짜가 더 커야하므로, WHERE 절을 설정해주고, 들어온 날짜를 기준으로 정렬해준다.

(INNER) JOIN 을 하면 교집합에 해당하는 컬럼을 얻을 수 있다. 
*/
SELECT INS.ANIMAL_ID, INS.NAME
FROM ANIMAL_INS AS INS
JOIN ANIMAL_OUTS AS OUTS
ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
WHERE INS.DATETIME > OUTS.DATETIME
ORDER BY INS.DATETIME