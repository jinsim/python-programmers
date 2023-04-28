/*
[Lv4] 우유와 요거트가 담긴 장바구니
이름이 우유와 요거트인 카트를 다 고른 후 반환한다.
이를 FROM 으로 받아서 한번 더 그룹핑을 해주면, CART_ID 로 묶을 수 있다.
이제 COUNT를 세서 2 이상인 것을 고르면, 우유와 요거트 모두가 담긴 카트를 얻을 수 있다.
*/
SELECT CART_ID
FROM (
    SELECT CART_ID, NAME
    FROM CART_PRODUCTS
    WHERE NAME IN ('Milk', 'Yogurt')
    GROUP BY CART_ID, NAME)
GROUP BY CART_ID
HAVING COUNT(*) > 1