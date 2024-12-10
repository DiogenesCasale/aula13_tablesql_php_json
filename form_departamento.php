<?php
include 'db.php';
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar Novo Departamento</title>

    <script>
function enviaDep() {
    var nome = document.getElementById('nome').value;

    var url = 'salva_dep_json.php?nome=' + nome;
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
    <input type="button" value="Cadastrar" onclick='enviaDep()'>
</div>

</body>
</html>