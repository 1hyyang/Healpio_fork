<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>���̵� ã�� ���</title>
</head>
<body>
    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="jumbotron">
            <h2>���̵�� :</h2>
            <ul>
                <c:forEach items="${memberList}" var="member" varStatus="status">
                    <li>${member.member_id }</li><br />
                </c:forEach>
            </ul>
            <h2>�Դϴ�</h2>
            <button type="button" class="btn btn-primary" onclick="location.href='/login/login'">�α���������</button>
        </div>
    </div>
</body>
</html>
