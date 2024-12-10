<?php
function cadastrarUsuario($nome, $email, $senha) {
   include 'db.php';
    $codigoSQL = "INSERT INTO `tblusuario` (`nome`, `email`, `senha`) VALUES (:nomeusuario, :emailusuario, :senhausuario);";
    
    try {
        $comando = $conexao->prepare($codigoSQL);

        $resultado = $comando->execute(array('nomeusuario' => $nome,'emailusuario' => $email,'senhausuario' => $senha));
        

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

// Chama a função para cadastrar
$IsCorrect = cadastrarUsuario($nome, $email, $senha);

// Criar vetor resultado
$resultado = array('login' => $IsCorrect);

// Retorna $resultado em formato JSON:
echo json_encode($resultado);
?>