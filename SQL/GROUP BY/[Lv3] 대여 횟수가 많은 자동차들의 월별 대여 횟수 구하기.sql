/*
서브 쿼리를 사용해서 2022년 8월 ~ 10월 사이의 history의 개수가 5개가 넘는 car_id 들을 가져왔다.
그 2022년 8월 ~ 10월 사이의id 에 속하는 차들만 where 문을 통해 가져온 후,
group by 를 통해 월, 차를 기준으로 묶는다. 같은 월에 같은 차들끼리만 묶인다.
그리고 history count 를 세면, 그것이 RECORDS 가 된다.
*/
SELECT MONTH(START_DATE) MONTH, CAR_ID, COUNT(HISTORY_ID) RECORDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE 
    YEAR(START_DATE) = 2022 AND 
    MONTH(START_DATE) BETWEEN 8 AND 10 AND
    CAR_ID IN (
        SELECT CAR_ID
        FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
        WHERE 
        YEAR(START_DATE) = 2022 AND 
        MONTH(START_DATE) BETWEEN 8 AND 10
        GROUP BY CAR_ID
        HAVING COUNT(HISTORY_ID) >= 5)
GROUP BY MONTH(START_DATE), CAR_ID
ORDER BY MONTH ASC, CAR_ID DESC