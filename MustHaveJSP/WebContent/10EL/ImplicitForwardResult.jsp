<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<meta charset="UTF-8">
<head><title>표현 언어(EL) - 내장 객체</title></head>
<body>
    <h2>ImplicitForwardResult 페이지</h2>
    <h3>각 영역에 저장된 속성 읽기</h3>
    <ul>
    	<!-- 포워딩 : 리퀘스트 공유 -->
    	<!-- EL은 null을 띄우지 않음 -->
        <li>페이지 영역 : ${ pageScope.scopeValue }</li>
        <!-- 리다이렉트 : 리퀘스트 안뜸 -->
        <li>리퀘스트 영역 : ${ requestScope.scopeValue }</li>
        <li>세션 영역 : ${ sessionScope.scopeValue }</li>
        <li>애플리케이션 영역 : ${ applicationScope.scopeValue }</li>
    </ul>
    <h3>영역 지정 없이 속성 읽기</h3>
    <ul>
    	<!-- page값 X / request값 O -->
        <li>${ scopeValue }</li>
    </ul>
</body>
</html>