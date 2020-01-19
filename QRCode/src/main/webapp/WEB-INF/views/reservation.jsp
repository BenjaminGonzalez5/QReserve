<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>- Reservation -</title>
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
		<c:if test = "${admin}"><li><a href="<c:url value="/administration"/>">Administration</a></li></c:if>
		<li><a href="<c:url value="/reservation"/>">Reservation</a></li>
	</ul>

	<div>
		<form:errors />
	</div>

	<form:form servletRelativeAction="./user"
		modelAttribute="donneesFormulaireDto" acceptCharset="utf-8">
		<p>
			<label>Date Debut : </label>
			<form:input path="dateDebut" type="date" />
			<form:errors path="dateDebut" />
		</p>
		<p>
			<label>Durée (en minutes) : </label>
			<form:input path="duree" type="number" />
			<form:errors path="duree" />
		</p>
		<p>
			<label>Nom : </label>
			<form:input path="nom" />
			<form:errors path="nom" />
		</p>
		<p>
			<label>Description : </label>
			<form:input path="description" type="textarea" />
			<form:errors path="description" />
		</p>
		<p>
			<label>Participant : </label>
			<form:input path="participant" type="textfield" />
			<form:errors path="participant" />
		</p>

		<button type="submit">Reserver</button>
	</form:form>

	<p></p>
</body>
</html>