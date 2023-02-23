/*
REST_INFO 에서 FOOD_TYPE 을 그룹으로 묶고, 각 그룹 별로 가장 FAVORITES 이 많은 것을 출력한다.
이때 구분할 값도 넣어야 하는데, REST_ID 를 넣으면 그냥 제일 위에 요소가 나오므로,  FOOD_TYPE 을 같이 넣는다.
() 로 묶어서 비교를 하면, 각 row 중에서 FOOD_TYPE FAVORITES 이 서브쿼리에 존재하는 row 로 조건을 설정할 수 있다.
*/
SELECT FOOD_TYPE, REST_ID, REST_NAME, FAVORITES
FROM REST_INFO
WHERE 
    (FOOD_TYPE, FAVORITES) IN (
        SELECT FOOD_TYPE F, MAX(FAVORITES) M
        FROM REST_INFO
        GROUP BY FOOD_TYPE
    )
ORDER BY FOOD_TYPE DESC