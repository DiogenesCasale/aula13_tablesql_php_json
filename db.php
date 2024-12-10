<?php
$servidor = 'localhost';
$banco = 'sch';
$usuario = 'root';
$senha = '';

try {
    $conexao = new PDO("mysql:host=$servidor;dbname=$banco", $usuario, $senha);
} catch (PDOException $e) {
    echo "Erro de conexão: " . $e->getMessage();
}
?>