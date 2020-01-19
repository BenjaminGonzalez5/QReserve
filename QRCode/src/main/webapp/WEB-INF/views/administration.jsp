<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administration</title>
<style type="text/css">
table {
	margin: 1em;
	border-collapse: collapse;
	width: 20%;
	border-collapse: collapse;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

th {
	background-color: #F8AB12;
	color: white;
	text-align: center;
}

.button {
	display: inline-block;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	color: #fff;
	background-color: #4CAF50;
	border: none;
	border-radius: 15px;
	box-shadow: 0 3px #999;
}

.button:hover {
	background-color: #3e8e41
}

.button:active {
	background-color: #3e8e41;
	box-shadow: 0 1px #666;
	transform: translateY(1px);
}

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
}
</style>
</head>
<body>
	<ul>
		<li><a href="<c:url value="/"/>">Accueil</a></li>
		<li><a href="<c:url value="/administration"/>">Administration</a></li>
		<li><a href="<c:url value="/reservation"/>">Reservation</a></li>
	</ul>
	<table>
		<thead>
			<tr>
				<th>Numero</th>
				<th>Nom</th>
				<th>Reserver</th>
				<th>Plus</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${salles}" var="i">
				<tr>
					<td><c:out value="${i.numero}" /></td>
					<td><c:out value="${i.nom}" /></td>
					<td><a href="<c:url value="/reservation"/>"><button
								class="button">Réserver</button></a></td>
					<td><a href="<c:url value="/details/${i.id}"/>"><button
								class="button" style="float: right">Détails</button></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>