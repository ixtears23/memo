hoisting 이란.  

모든 선언을 scope의 상단으로 끌어 올립니다.  

Hoisting은 선언을 맨 위로 이동시키는 JavaScript의 기본 동작입니다.  



#### example1
~~~javascript
console.log(a);
~~~
- output  
~~~javascript
Uncaught ReferenceError: a is not defined...
~~~

#### example2
~~~javascript
console.log(a);
var a;
~~~

- output  
~~~javascript
undefined
~~~

#### javascript 는 선언만 hoisting 할 뿐 초기화는 hoists 하지 않습니다.

### Function Hoisting