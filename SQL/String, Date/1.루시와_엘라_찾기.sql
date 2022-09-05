/*
이름이 Lucy, Ella, Pickle, Rogan, Sabrina, Mitty인 동물의 정보를 출력한다.
IN연산자는 WHERE 절 내에서 특정값 여러개를 선택하는 SQL 연산자
*/
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE NAME IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
ORDER BY ANIMAL_ID 