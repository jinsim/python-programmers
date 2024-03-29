/*
[Lv3] 헤비 유저가 사용한 장소
위에는 IN을 사용한 쿼리다. IN은 부모 쿼리의 결과에 대해 하나하나 SELECT 절에서 비교한다.
아래는 EXISTS을 사용한 쿼리다. EXISTS은 서브 쿼리의 결과에 존재하는 값들만 출력한다.
*/
SELECT ID, NAME, HOST_ID
FROM PLACES
WHERE HOST_ID IN (
    SELECT HOST_ID
    FROM PLACES
    GROUP BY HOST_ID
    HAVING COUNT(HOST_ID) > 1)
ORDER BY ID

SELECT ID, NAME, HOST_ID
FROM PLACES P1
WHERE EXISTS (
    SELECT 1
    FROM PLACES P2
    WHERE P1.HOST_ID = P2.HOST_ID
    GROUP BY HOST_ID
    HAVING COUNT(HOST_ID) > 1)
ORDER BY ID