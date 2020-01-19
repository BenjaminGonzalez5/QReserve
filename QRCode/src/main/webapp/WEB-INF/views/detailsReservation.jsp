<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liste des reservations de la salle</title>
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
				<th>Nom</th>
				<th>Description</th>
				<th>Date de début</th>
				<th>Date de fin</th>
				<th>Participants</th>
				<th>Créateur de la reservation</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${details}" var="i">
				<tr>
					<td><c:out value="${i.nom}" /></td>
					<td><c:out value="${i.description}" /></td>
					<td><c:out value="${i.dateDebut}" /></td>
					<td><c:out value="${i.dateFin}" /></td>
					<td><c:forEach items="${participants}" var="j">
							<c:out value="${j}" />
						</c:forEach></td>
					<td><c:out value="${i.utilisateur.prenom}" /> <c:out
							value="${i.utilisateur.nom}" /> <c:out
							value="${i.utilisateur.mail}" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>