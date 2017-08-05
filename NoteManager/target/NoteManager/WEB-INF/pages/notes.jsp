<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Notes Page</title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>
</head>
<body>
<a href="../../index.jsp">Back to main menu</a>

<br/>
<br/>

<h1>Note List</h1>

<c:if test="${!empty listNotes}">
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">Title</th>
            <th width="120">Author</th>
            <th width="120">Data</th>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${listNotes}" var="note">
            <tr>
                <td>${note.id}</td>
                <td><a href="/notedata/${note.id}" target="_blank">${note.noteTitle}</a></td>
                <td>${note.noteAuthor}</td>
                <td>${note.data}</td>
                <td><a href="<c:url value='/edit/${note.id}'/>">Edit</a></td>
                <td><a href="<c:url value='/remove/${note.id}'/>">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>


<h1>Add a Note</h1>

<c:url var="addAction" value="/notes/add"/>

<form:form action="${addAction}" commandName="note">
    <table>
        <c:if test="${!empty note.noteTitle}">
            <tr>
                <td>
                    <form:label path="id">
                        <spring:message text="ID"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="id" readonly="true" size="8" disabled="true"/>
                    <form:hidden path="id"/>
                </td>
            </tr>
        </c:if>
        <tr>
            <td>
                <form:label path="noteTitle">
                    <spring:message text="Title"/>
                </form:label>
            </td>
            <td>
                <form:input path="noteTitle"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="noteAuthor">
                    <spring:message text="Author"/>
                </form:label>
            </td>
            <td>
                <form:input path="bookAuthor"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="data">
                    <spring:message text="Data"/>
                </form:label>
            </td>
            <td>
                <form:input path="data"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${!empty note.noteTitle}">
                    <input type="submit"
                           value="<spring:message text="Edit Note"/>"/>
                </c:if>
                <c:if test="${empty note.noteTitle}">
                    <input type="submit"
                           value="<spring:message text="Add Note"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
