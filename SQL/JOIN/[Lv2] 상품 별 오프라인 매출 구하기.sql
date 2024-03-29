/*
JOIN으로 테이블 2개를 합친 후에, GROUP 을 만들어서 각 코드 별로 합을 구한다.
*/
SELECT PRODUCT_CODE, SUM(P.PRICE*O.SALES_AMOUNT) SALES
FROM PRODUCT P
JOIN OFFLINE_SALE O
ON P.PRODUCT_ID = O.PRODUCT_ID
GROUP BY PRODUCT_CODE
ORDER BY SALES DESC, PRODUCT_CODE ASC