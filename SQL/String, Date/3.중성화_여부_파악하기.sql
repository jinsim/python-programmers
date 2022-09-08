/*
중성화가 된 동물은 SEX_UPON_INTAKE 컬럼에 'Neutered' 또는 'Spayed'라는 단어가 들어있다고 한다. 
중성화가 된 동물의 ID, NAME, 중성화 여부를 출력하자.

CASE 문은 WHERE 조건을 통과하면 THEN 값을 반환하고, 여러 조건을 나열할 수 있으며, ELSE를 통해 모든 조건을 통과하지 않은 경우도 처리가 가능하다.
*/
SELECT ANIMAL_ID, NAME,
    CASE WHEN SEX_UPON_INTAKE LIKE "%Neutered%" OR SEX_UPON_INTAKE LIKE "%Spayed%" 
        THEN "O" 
        ELSE 'X' 
    END AS "중성화"
FROM ANIMAL_INS