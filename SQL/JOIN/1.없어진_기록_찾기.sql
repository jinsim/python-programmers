/*
OUTS를 기준으로 INS를 LEFT OUTER JOIN한다. 그럼 OUTS이 존재하는 행들이 모일 것이고, 여기서 INS의 id가 NULL인 행들이 들어온 기록은 없고 나간 기록만 있는 동물들일 것이다.
OUTS의 id 순으로 정렬 후 id와 name을 출력하였다.

JOIN은 두 테이블의 데이터를 일정한 조건에 의해 연결하여 마치 하나의 테이블처럼 만드는 것
INNER JOIN은 교집합 / OUTER JOIN은 합집합
ON은 JOIN을 하기 전에 필터링 / WHERE은 JOIN을 한 후 필터링
*/
SELECT OUTS.ANIMAL_ID, OUTS.NAME
FROM ANIMAL_OUTS AS OUTS
LEFT OUTER JOIN ANIMAL_INS AS INS
ON OUTS.ANIMAL_ID = INS.ANIMAL_ID
WHERE INS.ANIMAL_ID IS NULL
ORDER BY OUTS.ANIMAL_ID