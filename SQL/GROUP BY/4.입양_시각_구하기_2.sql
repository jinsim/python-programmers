/*
사용자 정의 변수를 통해서 hour값을 0부터 23까지 만들어준다. 그리고 hour와, hour과 동일한 HOUR(DATETIME)을 가지는 행의 수를 출력해준다.

SET은 보통 UPDATE와 함께 특정 컬럼의 값을 변경할 때 사용된다. 여기서는 사용자 정의 변수 생성을 목적으로 사용됐다.
SET이외의 명령문에서는 =가 비교연산자로 사용되기 때문에 :=로 대입을 하는 것을 권장한다.
@를 변수 앞에 붙이면 해당 프로시저가 끝난 이후로도 사용 가능하기때문에 붙여주자.
*/
SET @hour := -1;

SELECT (@hour := @hour + 1),
    (SELECT COUNT(*) 
     FROM ANIMAL_OUTS 
     WHERE HOUR(DATETIME) = @hour)
FROM ANIMAL_OUTS
WHERE @hour < 23