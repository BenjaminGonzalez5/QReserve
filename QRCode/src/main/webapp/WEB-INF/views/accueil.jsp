<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accueil</title>
<style type="text/css">
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover {
	background-color: #111;
}

body {
	margin: 0;
	text-align: center;
}
</style>
</head>
<body>
	<ul>
		<li><a href="<c:url value="/"/>">Accueil</a></li>
		<c:if test = "${!connected}"><li><a href="<c:url value="/inscription"/>">Inscription</a></li></c:if>
		<c:if test = "${!connected}"><li><a href="<c:url value="/connexion"/>">Connexion</a></li></c:if>
		<c:if test = "${admin}"><li><a href="<c:url value="/administration"/>">Administration</a></li></c:if>
		<c:if test = "${connected}"><li><a href="<c:url value="/reservation"/>">Reservation</a></li></c:if>
	</ul>

	<h1>Bienvenue sur QReserve</h1>

</body>
</html>