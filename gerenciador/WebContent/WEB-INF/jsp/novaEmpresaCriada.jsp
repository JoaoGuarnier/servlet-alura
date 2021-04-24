<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,br.com.alura.gerenciador.modelo.Empresa"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sucesso</title>
</head>
<body>

	<c:import url="logout-parcial.jsp"/>

	<c:if test="${not empty empresa}">
		<p>Empresa <c:out value="${empresa}"/> cadastrada com sucesso!</p>
	</c:if>	
	
	<c:if test="${empty empresa}">
		<p>Nenhuma empresa cadastrada</p>
	</c:if>	
	
	
</body>
</html>





