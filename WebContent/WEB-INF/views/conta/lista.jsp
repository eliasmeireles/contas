<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<script src="resources/js/jquery.js"></script>
<script type="text/javascript">
	function deuCerto(dadosDaResposta) {
		alert("Conta paga com sucesso!");
	}
	function pagaAgora(id) {
		$.post("pagaConta", {'id' : id}, function() {
		  $("#conta_"+id).html("Paga");
		});
	}

</script>
<body>
	<table style="height: 10px; width: 775px;" border="1">
		<tr>
			<th>Código</th>
			<th>Descrição</th>
			<th>Valor</th>
			<th>Tipo</th>
			<th>Paga?</th>
			<th>Data de pagamento</th>
			<th>Ações</th>
		</tr>

		<c:forEach items="${todasAsContas}" var="conta">
			<tr>
				<td>${conta.id}</td>
				<td>${conta.descricao}</td>
				<td>R$ ${conta.valor}</td>
				<td>${conta.tipo}</td>
				<td id="conta_${conta.id}"><c:if test="${conta.paga eq false}">
                    Não paga
                </c:if> <c:if test="${conta.paga eq true }">
                    Paga!
                </c:if></td>
				<td><fmt:formatDate value="${conta.dataPagamento.time}"
						pattern="dd/MM/yyyy" /></td>
				<td><a href="removeConta?id=${conta.id}">Deletar</a></td>
				<td><c:if test="${conta.paga eq false }">
						<a href="#" onclick="pagaAgora(${conta.id});">Pagar</a>
					</c:if>
				</td>
				<td><a href="mostraConta?id=${conta.id}">Alterar</a></td>
			</tr>
		</c:forEach>
	</table>
	<form action="menu">
		<br /> <input type="submit" value="Inicio" />
	</form>

</body>
</html>