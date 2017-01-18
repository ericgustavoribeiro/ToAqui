package com.ejt.main;

import java.text.Normalizer;
import java.util.ArrayList;

import com.ejt.estabelecimento.Estabelecimento;
import com.ejt.evento.Evento;
import com.ejt.fachada.Fachada;
import com.ejt.usuario.Usuario;

public class Principal {

	public static void main(String[] args) throws Exception {
		Fachada fachada = Fachada.getInstance();
		
		//Usuario usuario = new Usuario("ERw","dwws", "gaqjoi4jogoj4f", "Masculino", "Belo", "PE");
		
		//fachada.usuarioCadastrar(usuario);
//		
	//	System.out.println(usuario.toString());
//		
		
		//System.out.println(fachada.usuarioListar());

		//System.out.println(fachada.usuarioProcurarNome("ERIvan"));
		//System.out.println(fachada.estabelecimentoProcurarNome("bar do erivan"));
		
//		String nome2 = "Natal Fáfica";
//		Evento evento = fachada.eventoProcurarNome(nome2);
		
//		String data = evento.getData_evento();
//		String dat[] = new String[3];
//		dat = data.split("-");
//		
//		System.out.println("DIA : " + dat[2]);
//		System.out.println("MES : " + dat[1]);
//		System.out.println("ANO : " + dat[0]);
//		
//		
//		String nome = evento.getNome();
//		nome = Normalizer.normalize(nome, Normalizer.Form.NFD);
//		nome = nome.replaceAll("[^\\p{ASCII}]", "");
//		
//		System.out.println("nome : " + nome2);
//		System.out.println("nome formatado : " + nome);
		//System.out.println(fachada.estabelecimentoListarCadastrados(2));
		
		//System.out.println(fachada.usuarioProcurarId(12));
		
		String nome = "ERIC";
		
		
		if(fachada.estabelecimentoChecarDisponivel(nome) == true){
			System.out.println("Aprovado");
		}else if(fachada.estabelecimentoChecarDisponivel(nome) == false){
			System.out.println("Pendente");
		}
		
	}

}
