<%@page import="petshop.model.Produto"%>
<%@page import="java.util.List"%>
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
		<form action="buscarProduto" method="post" class="petForm">
			<div>
				<label><strong>Busca pela Descrição:</strong></label><input type="text"
					name="descricao">
			</div>
			<br>
			<div>
				<input id="petButton" type="submit" name="salvar"
					value="Consultar Produto">
			</div>
			<%
			if(request.getAttribute("produtos")!=null) {
			List<?> produtos = (List<?>) request.getAttribute("produtos");
			
			for(int contador = 0; contador <= (produtos.size()-1);contador++) {
				Produto produto = (Produto) produtos.get(contador);
			%>
			
			

		<div class="petshopDivMother">
		<div class="petshopDivItem">
			<div class="petshopColumn">
				<span style="font-weight: bold">Id</span> <span>Conteúdo</span>
			</div>
			<div class="petshopColumn">
				<span style="font-weight: bold">Descrição</span> <span>Conteúdo</span>
			</div>
			<div class="petshopColumn">
				<span style="font-weight: bold">Quantidade</span> <span>Conteúdo</span>
			</div>
			<div class="petshopColumn">
				<span style="font-weight: bold">Preço</span> <span>Conteúdo</span>
			</div>
			<div class="petshopColumn">
				<span style="font-weight: bold">On-Line</span> <span>Conteúdo</span>
			</div>
			<div class="petshopColumn">
				<input id="petshopItemButton" type="submit" name="alterar" 
				value="Alterar"> <input id="petshopItemButton" 
				type="submit" name="Apagar" value="Apagar">
			</div>
			</div>
		</div>
		<%
		}
		}
		%>
		</form>
	</main>
</body>
</html>