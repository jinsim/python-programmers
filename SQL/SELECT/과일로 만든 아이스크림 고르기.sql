/*
여러 조건들을 다 ON에 써주는 방식으로 풀이했다.
*/
SELECT F.FLAVOR
FROM FIRST_HALF F
JOIN ICECREAM_INFO I
ON F.FLAVOR = I.FLAVOR AND I.INGREDIENT_TYPE = "fruit_based" AND F.TOTAL_ORDER > 3000