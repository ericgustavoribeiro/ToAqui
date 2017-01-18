function comfirmaSair() {
decisao = confirm("Deseja fazer o logout do portal?");
if (decisao){
    alert ("Obrigado por sua visita");
    window.location.href="sair.jsp";

} else {
    alert ("Você clicou no botão CANCELAR,\n"+
               "porque foi retornado o valor: "+decisao);
}

}

function removerEstabelecimento(remover, nomeDoCampo, valorASerPassado, nomeEstabelecimento) {
	decisao = confirm("Deseja remover esse anuncio? \nNome do Estabelecimento a ser Removido: " + nomeEstabelecimento);
	if (decisao){
		 location.href= remover+"?"+nomeDoCampo+"="+valorASerPassado;

	} else {
	    alert ("Você clicou no botão CANCELAR,\n"+
	               "porque foi retornado o valor: "+decisao);
	}

	}