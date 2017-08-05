<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
   
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %> --%>
<%-- <%@ page session="false" %> --%> 
   
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>FullCalendar</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fc/fullcalendar.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fc/fullcalendar.print.css" media="print">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
	
	<div id="calendar"></div>
	
	<script src="${pageContext.request.contextPath}/resources/fc/lib/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/fc/lib/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/fc/fullcalendar.js"></script>
	<script src="${pageContext.request.contextPath}/resources/fc/lang-all.js"></script>
	<!-- <script src="fc/lang/ru.js"></script> -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<%-- 	<script src="${pageContext.request.contextPath}/resources/js/event.js"></script> --%>
	




	
<!-- <div id="dialog">
<form>
<div class="form-group">
<label for="title">Название события</label>
<input type="text" class="form-control" id="title" placeholder="Название события">
</div>
<div class="form-group">
<label for="start">Начало события</label>
<input type="text" class="form-control datepicker" id="start" placeholder="Начало события">
</div>
<div class="form-group">
<label for="end">Конец события</label>
<input type="text" class="form-control datepicker" id="end" placeholder="Конец события">
</div>
<button type="submit" class="btn btn-success">Добавить событие</button>
</form>
</div>
 -->
	
	
	
</body>
</html>