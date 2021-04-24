<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,br.com.alura.gerenciador.modelo.Empresa"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard TagLib</title>
</head>
<body>

		<c:import url="logout-parcial.jsp"/>

		<h2>Usuario Logado ${usuarioLogado.login}</h2>

		<h1>Lista De Empresas</h1>
		
		
		
		<ul>
			<c:forEach items="${empresas}" var="empresa">
				<li>
					${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>
					<a href="/gerenciador/entrada?acao=MostrarEmpresa&id=${empresa.id}">editar</a>
					<a href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id}">remover</a>
				</li> 
			</c:forEach>
		</ul>
		
</body>
</html>






