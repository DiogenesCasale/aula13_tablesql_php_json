<?php
function cadastrarUsuario($nome, $email, $pass) {
   include 'db.php';
    $codigoSQL = "INSERT INTO `tblusuario` (`id`, `nome`, `email`, `senha`)  VALUES (NULL, :nomeusuario, :emailusuario, :senhausuario)";
    
    try {
        $comando = $conexao->prepare($codigoSQL);

        $resultado = $comando->execute(array('nomeusuario' => $nome,'emailusuario' => $email,'senhausuario' => $pass));
        var_dump($pass);

        if($resultado){
            $conexao = null;
            return "Cadastrado Com Sucesso!";
        } else {
            $conexao = null;
            return "Erro ao executar o comando!";
        }
    } catch (Exception $e) {
        $conexao = null;
        return "Erro $e";
        }
        
}

$nome = $_GET['nome'];
$email = $_GET['email'];
$senha = $_GET['senha'];

$IsCorrect = cadastrarUsuario($nome, $email, $senha);
$resultado = array('login' => $IsCorrect);
echo json_encode($resultado);
?>