<%--
  Created by IntelliJ IDEA.
  User: antonsabalov
  Date: 12.09.2021
  Time: 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.CheckCoordinat" %>
<jsp:useBean id="manyCheckCoordinat" class="model.ManyCheckCoordinat" scope="session"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table id="answerTable">

  <tr>
    <th>x</th>
    <th>y</th>
    <th>r</th>
    <th>Попал ли в одз</th>
    <th>Сейчас время</th>
    <th>Время за которое выполнился скрипt</th>
  </tr>
  <tbody>


  <c:forEach var="checkCoordinate" items="${manyCheckCoordinat.results}">
    <tr>
      <th>${checkCoordinate.x}</th>
      <th>${checkCoordinate.y}</th>
      <th>${checkCoordinate.r}</th>
      <th>${checkCoordinate.result}</th>
      <th>${checkCoordinate.startTime}</th>
      <th>${checkCoordinate.timework}</th>
    </tr>
  </c:forEach>
  </tbody>
</table>

