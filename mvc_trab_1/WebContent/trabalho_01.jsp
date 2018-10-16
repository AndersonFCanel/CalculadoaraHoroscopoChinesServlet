<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
<!-- Inclusão do jQuery-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"
	type="text/javascript"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.js"
	type="text/javascript"></script>


<!-- Inclusão do js de validação-->
<script src="javascript/validacao.js" type="text/javascript"></script>
<!-- Inclusão da folha de estilo-->
<link rel="stylesheet" type="text/css" href="css/estilo.css">


<!-- BOOTSTRAP -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
	
</script>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trabalho 1</title>
</head>
<body>
	<hr
		style="height: 2px; border: none; color: #000; background-color: #000; margin-top: 0px; margin-bottom: 0px;" />
	<h1>****** ATIVIDADE 1 - TRABALHO 1 ******</h1>
	</br>

	<div class="row content">
		<div class="col-sm-8 text-left">
			<h3>REPETIÇÃO DA PALAVRA: Atletico-MG</h3>
		</div>
		<div class="col-sm-1 text-left"></div>
	</div>

	<div class="row content">
			<fieldset>
				<%
					for (int i = 0; i < 20; i++) {
						out.print(i + 1 + " - Atletico-MG\n");
						out.print("</br>");
					}
				%>
			</fieldset>
		</div>
		<div class="col-sm-11 text-left"></div>
	</div>
	</br>
	</br>

	<hr
		style="height: 2px; border: none; color: #000; background-color: #000; margin-top: 0px; margin-bottom: 0px;" />
	<h1>****** ATIVIDADE 2 - TRABALHO 1 ******</h1>
	</br>
	</br>
	<div class="row content" id="conteudo">
		<div class="col-md-4 "></div>
		<div class="col-md-4 ">
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
	</br>

	<hr
		style="height: 2px; border: none; color: #000; background-color: #000; margin-top: 0px; margin-bottom: 0px;" />
	<div class="row content">
		<div class="col-md-2 "></div>
		<div class="col-md-6 ">
			<%
				if (qtd != 0) {
					out.print("<table class='table1' ><tbody>");
					out.print("<td>\n<tr>\n<h3>QUANTIDADE DE VEZES QUE SERA REPETIDA: " + qtd + "\n</h3>");
					out.print("\n</tr>\n<tr>\n<h3>\n	PALAVRA: " + palavra + "</h3></tr>\n</td>");
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
		</div>
		<div class="col-md-4 "></div>
	</div>
	</table>
</body>
</html>