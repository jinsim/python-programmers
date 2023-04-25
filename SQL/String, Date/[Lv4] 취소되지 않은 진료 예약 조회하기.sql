/*
[Lv4] 취소되지 않은 진료 예약 조회하기
3개의 테이블을 join하면서, 예약 기록이 22년4월13일이고, 예약 취소가 되지 않은 CS 과목인 row를 가져온다.
조건만 잘 갗주고 join 하면 풀리는 문제다.
*/
SELECT APNT_NO, PT_NAME, A.PT_NO, A.MCDP_CD, DR_NAME, APNT_YMD
FROM PATIENT P
JOIN DOCTOR D
JOIN APPOINTMENT A
ON A.PT_NO = P.PT_NO AND A.MDDR_ID = D.DR_ID AND
    DATE_FORMAT(APNT_YMD, "%Y-%m-%d") = "2022-04-13" AND
    APNT_CNCL_YN = 'N' AND
    A.MCDP_CD = 'CS'
ORDER BY APNT_YMD ASC