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
		<li><a href="<c:url value="/inscription"/>">Inscription</a></li>
		<li><a href="<c:url value="/connexion"/>">Connexion</a></li>
	</ul>

	<h1>Connectez-vous</h1>

	<div>
		<form:errors />
	</div>

	<form:form servletRelativeAction="./connexion"
		modelAttribute="donneesConnexionDto" acceptCharset="utf-8">
		<p>
			<label>Mail : </label>
			<form:input path="mail" />
			<form:errors path="mail" />
		</p>
		<p>
			<label>Mot de Passe : </label>
			<form:input path="mdp" type="password" />
			<form:errors path="mdp" />
		</p>
		<button type="submit">Se connecter</button>
	</form:form>

	<p></p>

</body>
</html>