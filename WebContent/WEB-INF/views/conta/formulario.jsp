<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Adicionar Contas</h3>
	<p>Bem vindo, ${usuarioLogado.login}</p>
	<form action="adicionaConta" method="post">
		Descrição: <br />
		<textarea name="descricao" rows="5" cols="50"></textarea>
		<br /> 
		<form:errors path="conta.descricao"/><br/>
		Valor: <br /> <input type="number" step="00.01" name="valor" /><br /> 
		<form:errors path="conta.valor"/><br/>
		Tipo: <br />
		<select name="tipo">
			<option value="ENTRADA">Entrada</option>
			<option value="SAIDA">Saída</option>
		</select> <br />
		<br /> <input type="submit" value="Adicionar" />
	</form>
	<form action="menu">
		<br /> <input type="submit" value="Inicio" />
	</form>
</body>
</html>