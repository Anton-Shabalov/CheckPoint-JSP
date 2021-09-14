<%--
  Created by IntelliJ IDEA.
  User: antonsabalov
  Date: 12.09.2021
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.CheckCoordinat" %>
<jsp:useBean id="manyCheckCoordinat" class="model.ManyCheckCoordinat" scope="session"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:forEach var="checkCoordinate" items="${manyCheckCoordinat.results}">

  <circle r="7" cx="${Math.round((checkCoordinate.x * 2) / checkCoordinate.r * 82 + 400 / 2)}" cy=${Math.round(400 / 2.0 - (checkCoordinate.y * 2) / checkCoordinate.r * 82)} fill="black"></circle>
</c:forEach>
