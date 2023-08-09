<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Consultar Endereço</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		$("#cep").blur(function(){
				var url = "https://viacep.com.br/ws/" + $("#cep").val() + "/json/";
				$.get( url, function( response ){
					$("#logradouro").val(response.logradouro);
					$("#complemento").val(response.complemento);
					$("#bairro").val(response.bairro);
					$("#localidade").val(response.localidade);
					$("#uf").val(response.uf);
				},	"json");
			} );
		});		
</script>

</head>
<body style="background-color:lightgray">

<form id="frmEndereco">

<div class="container">
	<div class="row"></div>
	<div class="mb-4"></div>
	<div class="mb-3 mt-3">
    	<label for="cep" class="form-label">CEP:</label>
    	<input type="text" class="form-control" id="cep" placeholder="CEP" name="cep">
  	</div>
  	<div class="mb-3 mt-3">
    	<label for="logradouro" class="form-label">Logradouro:</label>
    	<input type="text" class="form-control" id="logradouro" placeholder="Logradouro" name="logradouro">
  	</div>
  	<div class="mb-3 mt-3">
    	<label for="complemento" class="form-label">Complemento:</label>
    	<input type="text" class="form-control" id="complemento" placeholder="Complemento" name="complemento">
  	</div>
  	<div class="mb-3 mt-3">
    	<label for="bairro" class="form-label">Bairro:</label>
    	<input type="text" class="form-control" id="bairro" placeholder="Bairro" name="bairro">
  	</div>
  	<div class="mb-3 mt-3">
    	<label for="localidade" class="form-label">Cidade:</label>
    	<input type="text" class="form-control" id="localidade" placeholder="Cidade" name="localidade">
  	</div>
  	<div class="mb-3 mt-3">
    	<label for="uf" class="form-label">UF:</label>
    	<input type="text" class="form-control" id="uf" placeholder="UF" name="uf">
  	</div>
</div>
</form>


</body>
</html>