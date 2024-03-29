[[출처:스택오버플로우]](https://stackoverflow.com/questions/5901378/what-exactly-is-a-maven-snapshot-and-why-do-we-need-it)


### Maven의 스냅 샷 버전은 아직 공개되지 않은 버전

1.0 릴리스 (또는 다른 릴리스)가 완료되기 전에 1.0 스냅 샷이 존재한다는 것입니다.
그 버전은 1.0이 될 것입니다.
그것은 기본적으로 "개발 중 1.0"입니다.
실제 1.0 릴리스 또는 0.9 릴리스 직후의 꽤 가까운 버전 일 수 있습니다.

"실제"버전과 스냅 샷 버전의 차이점은 스냅 샷에 업데이트가 있을 수 있다는 것입니다
즉, 1.0 스냅 샷을 다운로드하면 어제 또는 내일 다운로드하는 것과는 다른 파일을 제공 할 수 있습니다.

---
### SNAPSHOT 종속성을 발견했을 때 Maven의 동작에 관한 정보
애플리케이션을 빌드하면 Maven은 로컬 저장소에서 종속성을 검색합니다.
안정된 버전(stable version)이 없으면
settings.xml 또는 pom.xml에 정의 된 원격저장소(remote repositories)를 검색하여 이 종속성을 검색합니다.
그런 다음 로컬 저장소(local repository)로 복사하여 다음 빌드에서 사용할 수 있도록합니다.

예를 들어 foo-1.0.jar 라이브러리는 안정 버전으로 간주되고
Maven이 로컬 저장소에서 foo-1.0.jar 라이브러리를 찾으면 현재 빌드에 이 라이브러리를 사용합니다.

만약 foo-1.0-SNAPSHOT.jar 라이브러리가 존재한다면 Maven은 이 버전이 안정적이지 않고 변경 될 수 있음을 알게 될 것이다.
따라서 Maven은 원격 저장소에서 foo-1.0-SNAPSHOT.jar 라이브러리의 버전이 로컬 저장소에있는 경우에도 최신 버전을 찾으려고합니다.
그러나 이 확인은 하루에 한 번만 수행됩니다.

결론
Maven 빌드를 실행했을 때
로컬 저장소에 foo-1.0-20110506.110000-1.jar (즉, 2011/05/06 11:00:00에 생성 된 라이브러리)가 있고 
같은 날 Maven 빌드를 다시 실행해도 Maven은 리파지토리를 새로운 버전으로 체크하지 않을 것입니다.

Maven은 저장소 정의에서 이 업데이트 정책을 변경할 수있는 방법을 제공합니다 :
~~~xml
<repository>
    <id>foo-repository</id>
    <url>...</url>
    <snapshots>
        <enabled>true</enabled>
        <updatePolicy>XXX</updatePolicy>
    </snapshots>
</repository>
~~~
여기서 XXX는 다음과 같습니다.
- **always** : Maven은 모든 빌드에서 최신 버전을 확인합니다.
- **daily** : 기본값.
- **interval:XXX** : 간격 (분) (XXX)
- **never** : Maven은 절대로 다른 버전을 검색하려고 시도하지 않습니다. 로컬에 존재하지 않는 경우에만 수행됩니다.  
이 구성을 사용하면 SNAPSHOT 버전이 안정적인 라이브러리로 처리됩니다.
