/*
ISNULL 로 NULL 체크를 할 수 있다.
*/
SELECT COUNT(*) USERS
FROM USER_INFO
WHERE ISNULL(AGE)