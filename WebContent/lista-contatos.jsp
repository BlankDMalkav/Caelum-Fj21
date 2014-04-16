<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Contatos</title>
</head>
<body>

	<c:import url="cabecalho.jsp" />

	<!-- ELIMINANDO DA useBean DA PAGE -->
	<%-- <jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" /> --%>

	<table>
		<tr>
			<td>Nome</td>
			<td>Email</td>
			<td>Endereco</td>
			<td>Data sei la do que</td>
		</tr>
		<%-- <c:forEach var="contato" items="${dao.lista}" varStatus="id"> --%>
		<c:forEach var="contato" items="${contatos}">
			<tr>
				<td>${contato.nome}</td>
				<td><c:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</c:if> <c:if test="${empty contato.email}">
				        E-mail não informado
				    </c:if></td>
				<td>${contato.endereco}</td>
				<td>
					<%-- ${contato.dataNascimento.time}  --%> <fmt:formatDate
						value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy" /> <a
					href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<c:import url="rodape.jsp" />
</body>
</html>