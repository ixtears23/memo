## Observer Pattern

Observer Pattern 또는 Publish-Subscribe(Pub-Sub) Pattern  


GoF에 의해 만들어진 고전적인 정의에 따르면, Observer Pattern의 의도는 다음과 같습니다.  

> Define a one-to-many dependency between objects so that when one object changes state,  
> all its dependents are notified and updated automatically.
> 하나의 객체가 상태를 변경하면 모든 종속 객체가 자동으로 통지되고 업데이트되도록 객체간에 일대 다 의존성을 정의합니다.


이것은 무엇을 의미 하는가?   
많은 소프트웨어 응용 프로그램에서 한 객체의 상태는 다른 객체에 종속됩니다.  
예를 들어 응용 프로그램에서 숫자 데이터 처리에 중점을 두면 이 데이터는  
스프레드 시트 나 그래프 또는 둘 다를 사용하여 그래픽 사용자 인터페이스 (GUI)에 표시 될 수 있습니다.  
기본 숫자 데이터가 업데이트되면 해당 GUI 구성 요소가 업데이트되어야합니다.  
따라서. 이 문제의 핵심은 기본 숫자 데이터에 GUI 구성 요소를 직접 연결하지 않고  
기본 숫자 데이터가 변경 될 때 GUI 구성 요소를 업데이트하는 방법 입니다.  


순진하고 확장 불가능한 솔루션은 스프레드 시트 및 그래프 GUI 구성 요소에 대한 참조로  
기본 숫자 데이터를 관리하는 객체를 제공하여 숫자 데이터가 변경 될 때  
객체가 GUI 구성 요소에 알릴 수있게하는 것입니다.  
이 간단한 솔루션은 더 많은 GUI 구성 요소가 추가되면 더 복잡한 응용 프로그램을 처리 할 수 없다는 것을 신속하게 증명합니다.  
예를 들어 숫자 데이터에 의존하는 20 개의 GUI 구성 요소가있는 경우이 20 개의 GUI 구성 요소에 대한 참조를 유지하려면이 숫자 데이터를 관리하는 객체가 필요합니다. 관심 대상 데이터에 의존하는 개체의 수가 증가하면 데이터 관리자와이 데이터에 종속 된 개체 간의 결합이 훨씬 어려워집니다.
