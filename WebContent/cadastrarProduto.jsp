<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/petStyle.css">

<meta charset="ISO-8859-1">
<title>PetShop</title>
</head>
<body>
	<nav class="petNav">
		<ul>
			<li><span style="color: yellow">PetShop</span></li>
			<li><img src="img/osso.png" height="20px"></li>
			<li><a href="cadastrarProduto.jsp">Cadastrar Produto</a></li>
			<li><a href="consultarProduto.jsp">Consultar Produto</a></li>
		</ul>
	</nav>
	<main class="petMain">
		<form action="cadastrarProdutor" method="post" class="petForm">

			<div>
				<label><strong>Descrição:</strong></label><input type="text"
					name="descricao" placeholder="Digite uma descrição do produto">
			</div>
			<div>
				<label><strong>Quantidade:</strong></label><input type="text"
					name="quantidade" placeholder="Digite a quantidade">
			</div>
			<div>
				<label><strong>Preço:</strong></label><input type="text"
					name="preco" placeholder="Digite o preço do produto">
			</div>

			<label><strong>Disponível On-Line:</strong></label><input
				type="checkbox" name="online">
			<br>
			<div>
				<input id="petButton" type="submit" name="salvar"
					value="Cadastrar Produto">
			</div>
			<div>
			<%
			String mensagem = (String) request.getAttribute("mensagem");
			if(mensagem != null)
				out.print(mensagem);
			
			%>
			</div>
		</form>
	</main>
</body>
</html>