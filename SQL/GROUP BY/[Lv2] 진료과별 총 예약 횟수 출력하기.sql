/*
MONTH 같은 비교가 생각나지 않는다면, APNT_YMD LIKE "2022-05%" 이런 식으로 처리해도 된다.
WHERE 절로 미리 테이블을 잘라주고, 진료과 코드로 그룹을 묶고, 정렬을 해준다.
*/
SELECT MCDP_CD "진료과 코드", COUNT(*) "5월예약건수"
FROM APPOINTMENT
WHERE MONTH(APNT_YMD) = 5
GROUP BY MCDP_CD
ORDER BY COUNT(*), MCDP_CD 

