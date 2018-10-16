<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String palavra = (String) request.getAttribute("palavra");
	String quantidade = (String) request.getAttribute("quantidade");
	int qtd;
	if (quantidade != null) {
		qtd = Integer.parseInt(quantidade);
	} else {
		qtd = 0;
	}
%>

<title>FORMULÁRIO</title>
<!-- Inclusão do jQuery via CDN
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"
	type="text/javascript"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.js"
	type="text/javascript"></script>
	-->
<!-- Inclusão do jQuery-->

<!-- BOOTSTRAP via CDN 
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">	
</script>
-->
<!-- BOOTSTRAP -->

<!-- Inclusão do jQuery via link local -->
<script src="javascript/jquery.min.js" type="text/javascript"></script>
<script src="javascript/jquery.validate.js" type="text/javascript"></script>

<!-- Inclusão do bootstrap via link local -->
<link rel="stylesheet" href="css/bootstrap-4.1.3/css/bootstrap.min.css">
<script
	"src/com/suam/trabalho"src="css/bootstrap-4.1.3/js/bootstrap.min.js">
	
</script>

<!-- Inclusão do js de validação-->
<script src="javascript/validacao.js" type="text/javascript"></script>
<!-- Inclusão da folha de estilo-->
<link rel="stylesheet" type="text/css" href="css/estilo.css">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trabalho 1</title>
</head>
<body>
	<hr />
	<div class="row">
		<div class="panel panel-default" id="cabecalho">
			<div class="panel-heading">
				<h1>****** ATIVIDADE 1 - TRABALHO 1 ******</h1>
			</div>
		</div>
	</div>

	<div class="row content">
		<div class="col-md-8 text-left">
			<h3>REPETIÇÃO DA PALAVRA: Atletico-MG</h3>
		</div>
		<div class="col-md-4 "></div>
	</div>

	<div class="row content">
		<div class="col-md-3">
			<%
				for (int i = 0; i < 20; i++) {
					out.print(i + 1 + " - Atletico-MG\n");
					out.print("</br>");
				}
			%>
		</div>
		<div class="col-md-9"></div>
	</div>

	</br>
	</br>

	<hr />
	<div class="row">
		<div class="panel panel-default" id="cabecalho">
			<div class="panel-heading">
				<h1>****** ATIVIDADE 2 - TRABALHO 1 ******</h1>
			</div>
		</div>
	</div>
	</br>

	<div class="row content" id="conteudo">
		<div class="col-md-3 "></div>
		<div class="col-md-5 ">
			<form id="form" data-toggle="validator" role="form" method="get"
				action="Controle">
				<fieldset>
					<legend>Por favor preencha a palavra e a quantidade de
						vezes que deseja repeti-la</legend>

					<div class="form-group">
						<label for="palavra" class="control-label">Palavra: </label> <input
							id="palavra" class="form-control"
							placeholder="Digite a palavra aqui..." type="text" name="palavra">
					</div>

					<div class="form-group">
						<label for="quantidade" class="control-label">Quantidade
							de vezes a repetir: </label> <input type="text" class="form-control"
							id="quantidade" name="quantidade"
							placeholder="Digite a quantidade de vezes que deseja repetir...">
					</div>

					<button type="submit" class="btn btn-primary">Enviar</button>
				</fieldset>
			</form>
		</div>
		<div class="col-md-4 "></div>
	</div>

	</br>

	<hr />
	<div class="row content">
		<div class="col-md-3 "></div>
		<div class="col-md-5 ">
			<%
				if (qtd != 0) {
					out.print("<table class='table1' ><tbody>");
					out.print("<td>\n<tr>\n<h3>A PALAVRA: '"+palavra+"' SERÁ REPETIDA:</h3>");
					out.print("\n</tr>\n<tr>\n<h3>\n'"+qtd +"' VEZES! </h3></tr>\n</td>");
					out.print("</tbody></table>");

					out.print(
							"<table class='table' id='alter'><thead> <tr><th>Quantidade</th><th>Palavra</th> </tr></thead><tbody>");

					for (int i = 0; i < qtd; i++) {
						if ((i % 2) == 0) { // resto 0
							out.print("<tr >");
							out.print("<td>" + (i + 1) + "</td>");
							out.print("<td>" + palavra + "</td>");
							out.print("</tr>");
						} else {
							out.print("<tr class = dif>");
							out.print("<td>" + (i + 1) + "</td>");
							out.print("<td>" + palavra + "</td>");
							out.print("</tr>");
						}
					}
					out.print("</tbody></table>");
				}
			%>
			</table>
		</div>
		<div class="col-md-4 "></div>
	</div>

</body>
</html>