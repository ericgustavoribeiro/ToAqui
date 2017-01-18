<%@page import="com.ejt.adm.Adm"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="com.ejt.fachada.Fachada"%>
<%@ page import="com.ejt.usuario.Usuario"%>
<%@ page import="com.ejt.evento.Evento"%>
   <%  
   
   HttpSession sessionLogin = request.getSession();
   Usuario usuario = (Usuario)sessionLogin.getAttribute("UsuarioLogado");
	
   HttpSession sessionLoginAdm = request.getSession();
   Adm adm = (Adm)sessionLoginAdm.getAttribute("AdmLogado");	

   
   String nome = request.getParameter("nome");
   
   Fachada fachada = Fachada.getInstance();
   Evento evento = fachada.eventoProcurarNome(nome);
   
   %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>#ToAqui - <%=evento.getNome()%></title>
</head>
<body>
	<h1> <%=evento.getNome()%></h1></br>
	
	<p>
	Local : <%=evento.getLocal()%></br>
	Data : <%=evento.getData_evento()%></br>
	Valor Entrada : <%=evento.getValor_ingresso()%></br>
	
	Endereco : <%=evento.getEndereco().getEndereco()%></br>
	Email : <%=evento.getContato().getEmail()%></br>
	Tel1 :			<%=evento.getContato().getTelefone()%></br>
	Tel2 :			<%=evento.getContato().getCelular()%></br>
	

	Descricao : <%=evento.getDescricao()%></br>
	</p>



<% 
if(!(sessionLogin.getAttribute("UsuarioLogado") == null)){
if(usuario.getId_user() == evento.getId_user()){
	
	%>
	
	<input type="submit" aling="center" onclick="location.href='alterarevento.jsp?id_evento=<%=evento.getId_evento()%>'" value="ALTERAR">
	<input type="submit" aling="center" onclick="location.href='RemoverEventoServlet?id_evento=<%=evento.getId_evento()%>'" value="REMOVER">
	
	
	
	<% 
	}
}

%>


<!-- <li><a href='listareventos.jsp'>sair </a></li> -->


</body>
</html>