<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Caelum</title>
</head>
<body>
	<h1>Cusro Spring MVC</h1>
	<h2>Página inicial da Lista de Contas</h2>
	<p>Bem vindo, ${usuarioLogado.login}</p>
	<form action="efetuaLogOff" method="post">
		<br /> <input type="submit" value="LogOff" />
	</form>
	<form action="listaContas" method="post">
		<br /> <input type="submit" value="Lista de contas" />
	</form>
	<form action="form" method="post">
		<br /> <input type="submit" value="Formulario" />
	</form>
</body>
</html>