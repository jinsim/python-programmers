/*
들어올 때와 나갈 때를 비교해서 그 사이에 중성화를 한 동물들만 출력해보자.
LIKE와 %를 통해서 부분 문자열을 검색해도 되지만, 중성화를 할 때에만 성별이 달라진다는 특성을 이용해서, 둘의 성별이 다른 행만 출력하면 쉽게 해결할 수 있다.
INNER JOIN으로 교집합을 가져온 후, WHERE 절을 사용해서성별이 다른 행만 출력한다.
*/
SELECT INS.ANIMAL_ID, INS.ANIMAL_TYPE, INS.NAME
FROM ANIMAL_INS AS INS
JOIN ANIMAL_OUTS AS OUTS
ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
WHERE INS.SEX_UPON_INTAKE != OUTS.SEX_UPON_OUTCOME
ORDER BY INS.ANIMAL_ID