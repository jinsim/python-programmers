/*
[Lv4] 서울에 위치한 식당 목록 출력하기
INNER JOIN 하면서 서울로 시작하는 식당을 가져오고, 리뷰 점수를 3번째 자리에서 반올림하여 정렬한다.
*/
SELECT I.REST_ID REST_ID, REST_NAME, FOOD_TYPE, FAVORITES, ADDRESS, ROUND(AVG(REVIEW_SCORE), 2) SCORE
FROM REST_INFO I
JOIN REST_REVIEW R
ON I.REST_ID = R.REST_ID AND ADDRESS LIKE "서울%"
GROUP BY I.REST_ID
ORDER BY SCORE DESC, FAVORITES DESC