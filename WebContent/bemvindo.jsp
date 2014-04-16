<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<body>
	<%-- comentário em JSP aqui: nossa primeira página JSP --%>

	<%
		String mensagem = "Bem vindo ao SUPER sistema de agenda do FJ-21!";
	%>
	<%
		out.println(mensagem);
	%>

	<br />

	<%
		String desenvolvido = "Desenvolvido por Bach";
	%>
	<%=desenvolvido%>

	<br />

	<%
		System.out.println("Tudo foi executado!");
	%>
</body>
</html>