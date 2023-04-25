/*
[Lv4] 년, 월, 성별 별 상품 구매 회원 수 구하기
USER_ID 별로 년, 달을 가져오는 서브쿼리를 생성한다.
해당 정보와 USER_INFO를 join하여, 년, 달, 성별로 그룹을 짓는다.
이러면, 년, 달, 성별 별로 유저들을 중복 없이 조회할 수 있다.
COUNT 같은 집계함수는 NULL을 측정하지 않으므로, HAVING을 사용하여 GENDER 를 거르고 출력하면 된다.
*/
SELECT YEAR, MONTH, GENDER, COUNT(GENDER) USERS
FROM USER_INFO I
JOIN (
    SELECT DISTINCT USER_ID, YEAR(SALES_DATE) YEAR, MONTH(SALES_DATE) MONTH
    FROM ONLINE_SALE) O
ON I.USER_ID = O.USER_ID
GROUP BY YEAR, MONTH, GENDER
HAVING USERS > 0
ORDER BY YEAR, MONTH, GENDER