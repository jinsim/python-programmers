/*
이름에 "EL"이 들어가는 개의 아이디와 이름을 이름으로 정렬한다. 
WHERE절로 TYPE을 Dog로 두고, NAME에 LIKE절을 붙여서 el이 포함된 동물들을 가져옵니다.
ORDER BY NAME으로 정렬한다.

LIKE는 부분적으로 일치하는 문자열을 찾기 위해서 WHERE절에 주로 사용됩니다. 이때 문자열을 검사할 때는 대소문자를 구분하지 않는다.
%를 붙이면, 단어 수 상관 없이 특정 단어들이 붙을 수 있습니다.
*/
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE ANIMAL_TYPE = 'Dog' AND NAME LIKE '%EL%'
ORDER BY NAME