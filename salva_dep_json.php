<?php
function cadastrarDep($nome) {
   include 'db.php';
    $codigoSQL = "INSERT INTO `tbldepartamento` (`id`, `nome`) VALUES (NULL, :nomedep)";
    
    try {
        $comando = $conexao->prepare($codigoSQL);

        $resultado = $comando->execute(array('nomedep' => $nome));

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

$IsCorrect = cadastrarDep($nome);
$resultado = array('login' => $IsCorrect);
echo json_encode($resultado);
?>