<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%--<html>--%>
<%--<head>--%>
    <%--<title>Menus</title>--%>
<%--</head>--%>
<%--<body>--%>

<head>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<h2>Menus</h2>

<%--<form name="testFrm" action="./menus/search/${name}" method="get">--%>
    <%--<input type="submit" value="search"/>--%>

    <%--<%if(session.getAttribute("searchResults") != null){--%>
        <%--java.util.List results = (java.util.List) session.getAttribute("searchResults");--%>
        <%--for(int i =0;i<results.size;i++){--%>
            <%--out.println(results.get(i);--%>
        <%--}--%>
    <%--}%>--%>
<%--</form>--%>

<div class="container">

    <form:form id="searchForm" action="./menus/search/${name}" method="get">
        <form class="form-horizontal" role="form">
            <div class="form-group">
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="name" name="name"/>
                </div>
                <div class="col-sm-4">
                    <button class="btn btn-default" type="submit"><span
                            class="glyphicon glyphicon-search"></span>Search
                    </button>
                    <a href="/admin/menu" class="btn btn-warning" role="button">Add new</a>
                </div>
            </div>
        </form>
    </form:form>

<table class="table">
    <thead>
        <tr>
            <th>Name</th>
        </tr>
    </thead>

    <tbody>
    <c:forEach items="${menus}" var="menu">
        <tr>
            <%--<td><a href="/menu?menuName=${menu.getName()}"> ${menu.getName()}</a></td>--%>
            <td><a href="<c:url value='/menu?menuName=${menu.getName()}'/>" /> ${menu.getName()} </a> </td>

            <%--<td>--%>
                <%--<c:forEach var="component" items="${menu.menuDishes}">--%>
                    <%--${component.dishName};--%>
                <%--</c:forEach>--%>
            <%--</td>--%>
            <td>
                <a href="<c:url value='/menus/edit/${menu.getId()}'/>" class="btn btn-success"
                   role="button">Edit</a>
                <a href="<c:url value='/menus/delete/${menu.getId()}'/>" class="btn btn-danger"
                   role="button">Remove</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
    <form><input type="button" value="Back" onclick="history.go(-1);return true;"></form>
</div>

<%--</body>--%>
<%--</html>--%>
