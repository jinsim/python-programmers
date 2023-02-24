/*
우선 CAR_ID로 그룹화를 시킨다.
BETWEEN 을 사용해서 START_DATE 와 END_DATE 사이에 2022-10-16 가 존재하면 0, 아니면 1을 반환한다.
이때, MAX 를 사용해서 1이 하나라도 있으면 1로 만든다. 
IF 문을 사용해서 1이면 대여중, 0이면 대여 가능을 출력한다.
*/
SELECT CAR_ID, IF (MAX(DATE('2022-10-16') BETWEEN START_DATE AND END_DATE), '대여중', '대여 가능') AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC