## INSTR()


~~~sql

SELECT INSTR('ASDASDASD', 'A') FROM DUAL;
-- OUTPUT: 1

SELECT INSTR('ASDASDASD', 'S') FROM DUAL;
-- OUTPUT: 2

SELECT INSTR('ASDASDASD', 'D') FROM DUAL;
-- OUTPUT: 3

SELECT INSTR('ASDASDASD', 'A', 1, 1) FROM DUAL;
-- OUTPUT: 1

SELECT INSTR('ASDASDASD', 'A', 3, 1) FROM DUAL;
-- OUTPUT: 4


SELECT INSTR('ASDASDASD', 'A', 3, 2) FROM DUAL;
-- OUTPUT: 7

SELECT INSTR('ASDASDASD', 'D', -1) FROM DUAL;
-- OUTPUT: 9

SELECT INSTR('ASDASDASD', 'D', -1, 2) FROM DUAL;
-- OUTPUT: 6
~~~

INSTR(a, b, c, d)

- a: 대상문자열
- b: 대상문자열에서 위치를 알고 싶은 문자
- c: 대상문자열에서 검색을 시작할 문자의 순번
- d: 몇번째로 찾은 문자의 순번을 리턴할지
