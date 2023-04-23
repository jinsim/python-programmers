/*
[Lv4] 식품분류별 가장 비싼 식품의 정보 조회하기
각 카테고리별 최대 가격과 카테고리를 반환하는 서브쿼리를 작성한다.
기존 테이블과 join 하면서 카테고리와 가격을 동일하게 갖는 row 를 출력한다.
*/
SELECT F.CATEGORY CATEGORY, MAX_PRICE, PRODUCT_NAME
FROM FOOD_PRODUCT F
JOIN (
    SELECT MAX(PRICE) MAX_PRICE, CATEGORY
    FROM FOOD_PRODUCT
    WHERE CATEGORY IN ('과자', '국', '김치', '식용유')
    GROUP BY CATEGORY) S
ON F.CATEGORY = S.CATEGORY AND PRICE = MAX_PRICE
ORDER BY MAX_PRICE DESC