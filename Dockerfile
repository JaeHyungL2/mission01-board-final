FROM openjdk:17-alpine
#알파인이란 jdk경량화버전임 - 베이스 이미지라고해서,  java위에돌아가니, jdk로.
#기본 이미지 지정해준거임.

ARG JAR_FILE=build/libs/*.jar
# ARG로 자르파일 위치 지정
#ARG: 변수지정시 사용.   컨테이너 내에서 사용할 변수 지정.
#그래서 이 변수로, 컨테이너에 app.jar 소스코드 복사할것.

COPY ${JAR_FILE} app.jar
#카피명령어쓰고 변수지정  , 주소의 파일을 카피해와라라는 명령어

ENTRYPOINT ["java","-jar", "/app.jar"]
# 이 명령어로  자르파일 실행시킬수있따.
#자릅파일은 실행시키기위해
#컨테이너에 이미지띄우면 이 명령어들이 실행되면서;