/*
CASE 로 조건을 나누었다. 일단 22년 5월 1일 이전인 경우에는 출고 완료, ISNULL 로 NULL 이 확인되면 출고미정, 그것도 아니면 출고대기
*/
SELECT ORDER_ID, PRODUCT_ID, DATE_FORMAT(OUT_DATE, "%Y-%m-%d") OUT_DATE,
    CASE
        WHEN OUT_DATE <= DATE('2022-05-01')
        THEN '출고완료'
        WHEN ISNULL(OUT_DATE)
        THEN '출고미정'
        ELSE '출고대기'
    END 출고여부
FROM FOOD_ORDER
ORDER BY ORDER_ID ASC