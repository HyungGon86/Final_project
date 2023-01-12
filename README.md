# Comme
유기 동물 커뮤니티

## 개발 환경
- eclipse
- Postman
- GitHub
- Oracle
- Visual Studio Code

## 사용 기술
### 백엔드
#### 주요 프레임워크 / 라이브러리
- Java 11 openjdk
- Spring Legacy
- MyBatis

#### Build tool
- Gradle

#### Database
- Mysql

### 프론트엔드
- Javascript
- Html/Css
- JSP
- Bootstrap 5

### 기타 주요 라이브러리
- summernote
- 아임포트

## 핵심 키워드

## E-R 다이어그램
![COMME](https://user-images.githubusercontent.com/105222802/211992433-e09ec325-885b-42d9-8189-198e9142d995.png)

## 프로젝트 목적

### 유기 동물 커뮤니티를 기획한 이유? 

**팬데믹 퍼피**라는 말 들어보셨나요?

코로나19로 집에 머무는 시간이 길어지면서 반려동물 입양이 증가한 현상을 나타내는 신조어입니다.

최근 코로나19 거리 두기가 많이 해제되면서 버려지는 반려동물의 수가 증가하고 있지만,

버려진 유기 동물의 입양 비율은 5년째 30%대에 머물고 있다는 정보를 확인하여 기획하게 되었습니다.

## 핵심 기능

### summernote

#### 글작성은 오픈소스 이지윅 에디터로

블로그의 글은 웹에 게시되는 컨텐츠인만큼 다양한 양식과 스타일을 지워하기 위해 오픈소스 에디터인 summernote를 적용 하였습니다.

[summernote 구현 코드](https://github.com/HyungGon86/Final_project/blob/master/src/main/webapp/WEB-INF/views/board/board_write.jsp)


### 메일 인증

Spring Mailsender 라이브러리를 이용하여 사용자가 아이디, 비밀번호를 분실하여 찾고자 할 때

회원가입시 등록한 이메일 주소를 토대로 인증메일을 발송하여 처리하였습니다.

[Spring Mailsender](https://github.com/HyungGon86/Final_project/blob/master/src/main/java/com/comme/member/MemberService.java#L244)

![이메일인증 ](https://user-images.githubusercontent.com/105222802/211996348-45dd1c1a-9401-4f47-b3c1-e24d0410e315.png)


### 기본적인 게시물 CRUD

게시물에 대한 기본적인 CRUD를 모두 구현하였습니다.

글작성은 위의 내용처럼 summernote editor을 통해 게시물이 등록되게 되며

글 읽기도 위의 내용처럼 summernote edit를 기반으로 작성된 데이터를 토대로 DB에서 불러와 조회하게 하였습니다..



### 카테고리 편집기 구현

카테고리 추가, 삭제, 상위 카테고리로 이동, 하위 카테고리로 이동, 카테고리 순서 변경이 가능한 관리자용 API를 구현하였습니다..

![게시판 편집 화면](https://user-images.githubusercontent.com/105222802/211995685-daa92fdb-594d-4495-89a2-c75a4b4bab9c.png)

클라이언트단에서는 바닐라 자바스크립트를 통해 DTO를 수정하고 DOM을 조작하여 구현하였고 변경된 카테고리 리스트를 DTO로 백단으로 넘기면 

백단에서는 변경된 카테고리리스트와 기존 카테고리리스트 두개를 비교대조를 통해 신규 카테고리생성, 기존카테고리 이름과 순서 변경, 카테고리 삭제 로직을 수행토록 했습니다.


### 유기 동물 API 구현

API 정보가 등록되어 있는 유기 동물들에 대한 정보를 사용자가 실시간으로 확인할 수 있게 구현하였습니다.

이를 통해 입양 의지가 있는 사용자는 해당 게시판에 정보를 토대로 보호소에 연락하고 입양이 가능하게 정보를 표기하였습니다.

![유기동물 게시판 API](https://user-images.githubusercontent.com/105222802/211996198-34360169-2c8e-4ad2-9bd3-5cf8fc3c26f2.png)


## 프로젝트를 통해 느낀점

처음으로 다른 사람들과 협업하고 처음으로 만들어본 프로젝트이다 보니 여러 방면에서 많이 부족한 프로젝트입니다.

협업 과정에서 형상관리에 대한 많은 어려움도 존재했고 중간에 관련 팀원 절반이 이탈하는 바람에 프로젝트 진행하는 기간 동안 많이 힘들었습니다.

하지만 그만큼 남은 팀원들끼리 노력하여 큰 문제 없이 해당 프로젝트를 완성할 수 있었고,

처음 했던 지금 이 프로젝트를 기반으로 다양한 방면의 지식이나 경험을 추가적으로 갖게 되었기 때문에 앞으로 개발자가 되어 일을 할 때도 큰 자양분이 될 프로젝트였다고 생각합니다.
