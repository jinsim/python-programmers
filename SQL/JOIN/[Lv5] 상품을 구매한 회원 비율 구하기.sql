/*
[Lv5] 상품을 구매한 회원 비율 구하기
자주 사용되는 2021년에 가입한 회원 수를 변수로 둔다.
join 절에서는 구매 회원, 구매 년, 구매 월을 중복 제거한 row를 반환한다.
해당 절의 user_id 를 기준으로 join 하여 2021년에 가입한 유저만 남긴다.
그 후 년, 월을 기준으로 그룹핑한다.
count를 사용해서 개수를 세면 된다.
*/
SET @count := (SELECT COUNT(USER_ID) FROM USER_INFO WHERE YEAR(JOINED) = 2021);

SELECT YEAR, MONTH, COUNT(U.USER_ID) PUCHASED_USERS,
    ROUND(COUNT(U.USER_ID)/@count,1) PUCHASED_RATIO
FROM USER_INFO U
JOIN (
    SELECT DISTINCT USER_ID, YEAR(SALES_DATE) YEAR, MONTH(SALES_DATE) MONTH
    FROM ONLINE_SALE) O
ON O.USER_ID = U.USER_ID AND
    YEAR(JOINED) = 2021
GROUP BY YEAR, MONTH
ORDER BY YEAR, MONTH