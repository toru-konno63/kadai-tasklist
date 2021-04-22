<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>タスク一覧</h2>
        <ul>
            <c:forEach var="task2" items="${tasks2}">
                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${task2.id}">
                        <c:out value="${task2.id}" />
                    </a>
                    ： <c:out value="${task2.content}" />
                </li>
            </c:forEach>
        </ul>

        <p><a href="${pageContext.request.contextPath}/new">新規タスクの入力</a></p>

    </c:param>
</c:import>