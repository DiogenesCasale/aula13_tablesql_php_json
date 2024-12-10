<?php
include 'db.php';
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar Novo Paciente</title>

    <script>
function envia() {
    var nome = document.getElementById('nome').value;
    var email = document.getElementById('email').value;
    var senha = document.getElementById('senha').value;
    

    var url = 'salva_usuario_json.php?nome=' + nome + '&email=' + email + '&senha=' + senha;
    fetch(url)
	.then(response => response.json())
	.then(data => {
	    document.getElementById('mostrar').textContent = "Resultado: " + data.login;
	});
}
    </script>

</head>
<body>

<div id='mostrar'>
    Nome: <input type="text" id="nome" required><br>
    Email: <input type="text" id="email" required><br>
    Senha: <input type="password" id="senha" required><br>
    Técnico? <input type="checkbox" id="isTech" required><br>
    <input type="button" value="Cadastrar" onclick='envia()'>
</div>

</body>
</html>