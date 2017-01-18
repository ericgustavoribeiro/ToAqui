<%@page import="com.ejt.adm.Adm"%>
<%@page import="com.ejt.evento.Evento"%>
<%@page import="oracle.net.aso.e"%>
<%@page import="com.ejt.avaliacao.Avaliacao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.ejt.fachada.Fachada"%>
<%@ page import="com.ejt.usuario.Usuario"%>
<%@ page import="com.ejt.estabelecimento.Estabelecimento"%>
<% 

HttpSession sessionLogin = request.getSession();
Usuario usuario = (Usuario)sessionLogin.getAttribute("UsuarioLogado");

HttpSession sessionLoginAdm = request.getSession();
Adm adm = (Adm)sessionLoginAdm.getAttribute("AdmLogado");	


String nome; 
nome = request.getParameter("nome");
if(nome == null){
	 nome = String.valueOf(request.getAttribute("nome"));	
}

int contatorAvaliacao = 0;
	//HttpSession sessionBuscadoEstabelecimento = request.getSession();
	//Estabelecimento estab = (Estabelecimento) sessionBuscadoEstabelecimento.getAttribute("BuscarEstabelecimento");
		
	Fachada fachada = Fachada.getInstance();
	Estabelecimento estab = fachada.estabelecimentoProcurarNome(nome);
//
	//Estabelecimento estabs = fachada.estabelecimentoProcurarNome(nome);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- avaliacao -->
    <title>#ToAqui - <%=estab.getNome()%></title>
        <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    
    <script type="text/javascript" src="avaliacao1/rating.js"></script>
    <link rel="stylesheet" href="avaliacao1/rating.css" type="text/css" media="screen" title="Rating CSS">
    
 
<!-- avaliacao -->


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>#To Aqui 2.0</title>


<!--	
	<link href="http://www.jqueryrain.com/wp-content/plugins/wp-bar/wpbar.css" rel="stylesheet" type="text/css">	
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js?ver=3.4.2"></script>
	<script type="text/javascript" async="" src="http://www.google-analytics.com/ga.js"></script>
	-->
	
	
	           <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	    <link href="css/bootstrap.css.map" rel="stylesheet">
			    <link href="css/bootstrap-theme.css.map" rel="stylesheet">
<!-- 					<link href="css/bootstrap-theme.min.css" rel="stylesheet"> -->
			    <link href="css/corfundo.css" rel="stylesheet">
				 <link href="css/hrcss.css" rel="stylesheet">


<link href="css/font-awesome.min.css" rel="stylesheet">

<link href="css/menulogin.css" rel="stylesheet">

	
	<link href="css/estilo-less.css" rel="stylesheet">
<!--bootstrap-->



<!-- responsavel pelo o mapa -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:600"
	type="text/css" rel="stylesheet" />
<link href="gmapa/estiloresultado.css" type="text/css" rel="stylesheet" />

<!--  <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script> -->
<script type="text/javascript"
	src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDblV6x_1OBNYBUM7gXLZEx3m_8qhCjnz0&callback&amp;sensor=false"></script>
<script type="text/javascript" src="gmapa/jquery.min.js"></script>
<script type="text/javascript" src="gmapa/mapa.js"></script>
<script type="text/javascript" src="gmapa/jquery-ui.custom.min.js"></script>
<!--fim mapa -->
<script type="text/javascript" src="gmapa/mapa2.js"></script>




	

       <script src="js/jquery-1.7.2.min.js"></script>
       <script src="js/lightbox.js"></script>
       <link href="css/hrcss.css" rel="stylesheet">

       <link href="css/lightbox.css" rel="stylesheet" />
		
    <script type="text/javascript">
        $(function(){
            $('.avaliacao').rating();
        });
    </script>
	

	
	<!--SCRIPT SLIDER -->
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="js/jssor.slider.mini.js"></script>

<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
  <!-- jQuery lightBox plugin - Gallery style */ -->
    <style type="text/css">
	#gallery {
		background-color: #fff;
		padding: 10px;
		width: auto;
	}
	#gallery ul { list-style: none; }
	#gallery ul li { display: inline; }
	#gallery ul img {
		border: 5px solid #444444;
		border-width: 5px 5px 20px;
	}
	#gallery ul a:hover img {
		border: 5px solid #fff;
		border-width: 5px 5px 20px;
		color: #fff;
	}
	#gallery ul a:hover { color: #fff; }
	
	
	</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>#ToAqui! <%=estab.getNome()%> </title>
</head>
  <body class="fadeIn">
<!--BARRA NAVEGACAO -->
<nav class="navbar navbar-default" style="background-image:linear-gradient(#C0C0C0,#D3D3D3);">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.jsp"> <span class="glyphicon glyphicon-home active"></span></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav"> 
               <li><a href="listarbar.jsp" ><strong>Bares</strong></a></li>
        <li><a href="listarrestaurante.jsp" ><strong>Restaurantes</strong></a></li>
		<li><a href="listarhotel.jsp"><font color=""><strong>Hoteis</strong></font></a></li>
		<li><a href="listareventos.jsp"><font color=""><strong>Eventos</strong></font></a></li>
		
     
      </ul>

	  
 <form class="navbar-form navbar-left" action="/ToAqui/BuscarServlet" method="get" role="search" style="padding-left:5%;">
        <div class="form-group">
          <input name="busca" type="text" class="form-control" placeholder="Procurando algo?" size="50"  >
        </div>
        <button type="submit" class="btn btn-default">Procurar</button>
        
      </form>
	 
  	      <% if(!(sessionLoginAdm.getAttribute("AdmLogado")== null)){%>
	     <ul class="nav navbar-nav navbar-right">
	        <li><p class="navbar-text">Bem Vindo</p></li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown"  >
	          <span class="glyphicon glyphicon-user"></span> 
	          <b><%=adm.getNome()%></b> <span class="caret"></span></a>
				<ul id="login-dp" class="dropdown-menu">
			  <li><a href="adm/index.html"><span class="glyphicon glyphicon-plus"></span>Adminstração</a></li>
           
           
            <li class="divider"></li>
<!--              <li><a href="contato.jsp"><span class="glyphicon glyphicon-envelope"></span>Contato</a></li> -->
<!--              ERIC AQUI TA CHAMANDO O ONCLIK PARA COMFIRMAR A SAIDA DO PORTAL -->
             
            <li><a href="sair.jsp" onclick=""><span class=" glyphicon glyphicon-off"></span>Sair</a></li>
					
					<!-- COLOCAR BOTATO DROPDOWN -->
	      </ul></li></ul>
	      
	      
   <%} else if(sessionLogin.getAttribute("UsuarioLogado")== null){ %>
	  <ul class="nav navbar-nav navbar-right">
	        <li><p class="navbar-text">já tem uma conta?</p></li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Faça seu login</b> <span class="caret"></span></a>
				<ul id="login-dp" class="dropdown-menu">
					<li>
						 <div class="row">
								<div class="col-md-12">
									Login via
									<div class="social-buttons">
										<a href="#" class="btn btn-fb"><i class="fa fa-facebook-square"></i> Facebook</a>
										<a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
									</div>
	                                ou
									 <form class="form" role="form" method="post" action="/ToAqui//LoginUsuarioServlet" accept-charset="UTF-8" id="login-nav">
											<div class="form-group">
												 <label class="sr-only" for="exampleInputEmail2">Email</label>
												 <input type="email" class="form-control" id="username" name="email" placeholder="seu@email.com" required>
											</div>
											<div class="form-group">
												 <label class="sr-only" for="exampleInputPassword2">Senha</label>
												 <input type="password" class="form-control" id="password" name="senha" placeholder="senha" required>
	                                             <div class="help-block text-right"><a href="">Esqueceu sua senha?</a></div>
											</div>
											<div class="form-group">
												 <button type="submit" value="Entrar"  class="btn btn-primary btn-block">Login</button>
											</div>
											
									 </form>
								</div>
								<div class="bottom text-center">
									Novo aqui? <a href="cadastrousuario.jsp"><b> Cadastre-se </b></a>
								</div>
						 </div>
					</li>
				</ul>
	        </li>
	      </ul>
<%} else if(!(sessionLogin.getAttribute("UsuarioLogado")== null)){ %>
  <ul class="nav navbar-nav navbar-right">
	        <li><p class="navbar-text">Bem Vindo</p></li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown"  >
	          <span class="glyphicon glyphicon-user"></span> 
	          <b><%=usuario.getNome()%></b> <span class="caret"></span></a>
				<ul id="login-dp" class="dropdown-menu">
				<li><a href="perfil.jsp"><span class="glyphicon glyphicon-user"></span>Perfil</a></li>
            <li><a href="cadastroestabelecimento.jsp"><span class="glyphicon glyphicon-plus"></span>Novo Estabelecimento</a></li>
            <li><a href="cadastroevento.jsp"><span class="glyphicon glyphicon-plus"></span>Novo Evento</a></li>
            
           
            <li class="divider"></li>
             <li><a href="contato.jsp"><span class="glyphicon glyphicon-envelope"></span>Contato</a></li>
             <!-- ERIC AQUI TA CHAMANDO O ONCLIK PARA COMFIRMAR A SAIDA DO PORTAL -->
             
            <li><a href="sair.jsp" onclick=""><span class=" glyphicon glyphicon-off"></span>Sair</a></li>
					
					<!-- COLOCAR BOTATO DROPDOWN -->
	      </ul></li></ul>
	      
	      <% }%>
   
	      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<!--FIM NAV -->

<!-- NK vai entrar o erroa aqui -->
<%  if (request.getAttribute("messagemErro") != null){%>
<script>	
$(document).ready(function() {
   $('#myModal').modal('show');
});
</script>

<!-- test modal erro -->
<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm ">
      <div class="modal-content ">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title alert alert-danger"><span class="glyphicon glyphicon-remove-sign"></span> <strong>Erro</strong></h4>
        </div>
        <div class="modal-body">
          <p><%= request.getAttribute("messagemErro") %></p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger"  data-dismiss="modal">Fechar</button>
        </div>
      </div>
    </div>
  </div>




<!--  fim teste modal r -->





<%} %>
<!-- FIM NK  erroa aqui -->


<div class="container">
 <div class="row">
  <div class="col-sm-4" style="margin-left: -5%;"><a href="index.jsp"><img  data-toggle="tooltip" title="ToAqui!" src="img/portal.png" ></a></div> <!-- img logo portal -->
  <div class="col-sm-4" style="margin-left: ;"><a href="cadastrousuario.jsp"><img src="img/anuncieaqui.png" width="550px;"></a></div>
  <div class="col-sm-4" style="padding-left: 25%; padding-top: 2%;"><a href="http://fafica-pe.edu.br/"><img data-toggle="tooltip" title="Fafica" src="img/fafica.jpg" width=""></a></div>

</div>
</div>

<hr class="colorgraph">


<!-- fim base inicial  -->


<div class="container">
 <div class="panel panel-primary"> <!-- PAINEL DO DADOS -->
      <div class="panel-heading">Informações sobre <strong><%=estab.getNome() %></strong>
      
      
      
      
      
            <% 
if(!(sessionLogin.getAttribute("UsuarioLogado") == null)){
if(usuario.getId_user() == estab.getId_user() || sessionLoginAdm.getAttribute("AdmLogado") != null){
	
	%> 
     
	<input name="id_user" type="hidden" value=<%=usuario.getId_user()%> >
	<input name="id_estabelecimento" type="hidden" value=<%=estab.getId_estabelecimento()%> >
	
          <input type="button" class="btn btn-info btn-xs" aling="center" onclick="location.href='alterarestabelecimento.jsp?id_estabelecimento=<%=estab.getId_estabelecimento()%>'" value="ALTERAR">
   	<a data-toggle="modal" href="#myModal" class="btn btn-danger btn-xs">REMOVER</a>
  
     

       
       
       <% }  

} %>
      
      
      
      
      
      
      </div>
      <div class="panel-body"><!--   PAINEL DADOS ESTABELECIMENTO -->
    

 <div class="row" style="padding-left: 10%; padding-top: 2%;"> <!-- DADOS -->
  <div class="col-sm-4" > <!-- img -->
      <div id="gallery" >
       
<a href="<%=estab.getImagem() %>" rel="lightbox" title="<%=estab.getNome().toUpperCase() %>" class="thumbnail" >
<strong> <%=estab.getNome().toUpperCase() %></strong>
<img src="<%=estab.getImagem() %>" width="450" height="350" alt=""  data-toggle="tooltip" title=" <%=estab.getNome() %>"></a></a>
   </div> <!-- fim div gallery -->
  
  
  </div>  <!-- fim img -->
  
  <div class="panel panel-default col-sm-7" style="padding-left: 5%; ">
 		
	
	<h4>Email : <strong><%=estab.getContato().getEmail()%></strong></h4>
	<% String teste = estab.getEndereco().getEndereco(); %>
	<h4>Tel1 :	<strong>	<%=estab.getContato().getTelefone()%></strong></h4>
	<h4>Tel2 :	<strong>		<%=estab.getContato().getCelular()%></strong></h4>
	
	
	<!-- Text input-->
<div class="form-group">
  
  <input id="txtEndereco" name="logradouro" type="hidden" placeholder="endereco" class="form-control input-md" required="" value="<%= estab.getEndereco().getEndereco()%>">
   

</div>
											
											
<!-- Text input-->

 
  <h4><a id="txtEndereco" href="https://www.google.com.br/maps/place/<%=estab.getEndereco().getEndereco() %>" target="_blank"  id="txtEndereco" name="logradouro" href="#mapaendereco" data-toggle="tooltip" title="ir para o googleMapas"><%=estab.getEndereco().getEndereco() %></h4></a>
 
  <input id="txtEndereco"  name="logradouro" type="hidden" placeholder="endereco"  value="<%=estab.getEndereco().getEndereco() %>" class="form-control input-md" required="">

<a href="#mapaendereco"> <input  class="btn btn-info" type="button" id="btnEndereco" name="btnEndereco"
									value="Vê no Mapa" /></a></span></h4>			
				
								 




		
	

	
	</br><strong>Formas de Pagamentos:</strong></br>
	<% if(estab.getPagamento_cielo().equalsIgnoreCase("Disponivel")) {%>
	<p> <img src="img/cartao/elo.png" atl="cartao elo"  data-toggle="tooltip" title="Cartao Elo">
	<% } %> 
	<% if(estab.getPagamento_hiper().equalsIgnoreCase("Disponivel")) {%>
<img src="img/cartao/hipercard.png" alt="cartao hipercard" data-toggle="tooltip" title="Cartao Hipercard">
	<% } %>

	<% if (estab.getPagamento_master().equalsIgnoreCase("Disponivel")) {%>
	<img src="img/cartao/mastercard.png" alt="cartao mastercard"   data-toggle="tooltip" title="Cartao MasterCard">
	<% } %>
	<% if (estab.getPagamento_visa().equalsIgnoreCase("Disponivel")){ %>
	<img src="img/cartao/visa.png" alt="cartao visa" data-toggle="tooltip" title="Cartao Visa"></p>
	<% } %>

  <!-- Textarea -->
<form role="form">
    <div class="form-group">
      <label for="comment">Descricao:</label>
      <textarea class="form-control" rows="5" id="comment"><%=estab.getDescricao() %></textarea>
    </div>
  </form>
</div>

  
  
  
  </div>
</div> <!-- FIM DADOS -->
<div id="mapaendereco"> <!-- ancora -->
 <div class="panel panel-success">
      <div class="panel-heading">
            <i class="glyphicon glyphicon-map-marker"></i><strong>Endereço : <%=estab.getEndereco().getEndereco() %></strong></div>
      
      <div class="panel-body"><!-- mostrar mapa -->
							 
	<label	for="txtLogitude">  
	<input id="txtLongitude" name="numero" type="hidden" placeholder="longitude" class="form-control input-md" value=" <%=estab.getEndereco().getLongitude() %>">
 </label>  
  <label for="txtLatitude"> 
   <input id="txtLatitude" name="bairro" type="hidden" placeholder="latitude" class="form-control input-md" value="<%=estab.getEndereco().getLatitude()%>">
								</label>
								<!--teste endereco -->

								<div id="apresentacao">
									<fieldset>
										<div id="mapaAp">
											<!-- endere -->
											<input type="button" id="btnEndereco" name="btnEndereco"
												value="Mostrar no mapa" />
										</div>




									</fieldset>
								</div>


								<!--fim teste -->

							</div>
      
      
      
      
      </div><!-- fim MAPA -->
      </div><!-- ancora -->
      
    </div>

</div> <!-- FIM PAINEL DADOS -->


<% 
if(!(sessionLogin.getAttribute("UsuarioLogado") == null)){
	if(usuario.getId_user() == estab.getId_user() || sessionLoginAdm.getAttribute("AdmLogado") != null){		
%>

<div class="container">
	<div class="row">
		<div id="myModal" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
 
                <div class="modal-header">
                    <a class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span></a>
                    <h4 class="modal-title" id="myModalLabel">Excluir Estabelecimento</h4>
                </div>
                <div class="modal-body">
                 <div class="row">
  <div class="col-sm-6">
                    <h4 style="padding-top: 25%;">Deseja realmente excluir ?</h4>
  
  </div>
  <div class="col-sm-6">
                      <h5><%=estab.getNome() %></h5>
  
                      <img src="<%=estab.getImagem()%>" style="max-width: 220px;">
  
  
  
  </div>
</div>
                </div>
                <div class="modal-footer">
                    <div class="btn-group">
                    <button class="btn btn-default" data-dismiss="modal">Cancelar</button>
 
                    <button class="btn btn-danger" aling="center"  onclick="location.href = 'RemoverEstabelecimentoServlet?id_estabelecimento=<%=estab.getId_estabelecimento()%>'"  >Remover</button>
                </div>
                </div>
 
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dalog -->
</div><!-- /.modal -->
    

<div>

















	<input name="id_user" type="hidden" value=<%=usuario.getId_user()%> >
	<input name="id_estabelecimento" type="hidden" value=<%=estab.getId_estabelecimento()%> >
							


<!--  <div class="container"> -->
 
<!--   <div class="col-sm-10"  style="padding-bottom: 2%;"> -->
<%-- <%--      <input type="button" class="btn btn-primary" aling="center" onclick="location.href='alterarestabelecimento.jsp?id_estabelecimento=<%=estab.getId_estabelecimento()%>'" value="ALTERAR"> --%> 
<!-- <!--    	<a data-toggle="modal" href="#myModal" class="btn btn-danger">Remover</a> --> 
  
<!--   </div> -->
  
<!--   <div class="col-sm-2" style="padding-bottom:"> -->
 
 	
 	
 
<!--   </div> -->
<!--   </div> -->
 
</div>



	
	</div> <!--  FIM PAINEL DADOS ESTABELECIMENTO -->
	
	</div> <!-- FIM DIV CONTAINER -->

	   
	

 
  

<!-- COMENTARIOS FEITO NO ESTABALECIMENTO -->


  <div class="container">
  <div class="panel panel-success">
    <div class="panel-heading">
    <h3>Comentários 	 </h3>
    </div>

    <div class="panel-footer" style="padding: 10px 35px;">
      
        <div class="row">
          <div id="filter-panel" class="filter-panel">
            <div class="panel panel-default">
              <div class="panel-body">
              
              
              
                <p>
<table class="table table-striped">
	
		<thead>
		<th> USUARIO</th>
		<th> NOTA </th>
		<th> COMENTARIOS</th>
		
</thead>
		<tbody>
<%
ArrayList<Avaliacao> listar = fachada.avaliacaoListar(estab.getId_estabelecimento());

for(Avaliacao avaliacao : listar){
	
	contatorAvaliacao++;
%>

<tr>
<td><%=avaliacao.getUsuario().getNome()%></td>
<td><%=avaliacao.getNota()%></td>
<td><%=avaliacao.getDescricao()%></td>
</tr>
</p>	
<%
}
%>
</tbody>
<caption> Total de Comentários<span class="badge"><%=contatorAvaliacao %></span></caption>
</table>
        
              
              
              
              
              
              </div>
            </div>
          </div><button type="button" class="btn btn-success glyphicon glyphicon-resize-vertical" data-toggle="collapse"
          data-target="#filter-panel">  </button>
          
        </div>
      </div>

      <div class="clearfix"></div>
    </div>
 </div>


<% 
	}
		


%>
      </div>



<%



} if(!(sessionLogin.getAttribute("UsuarioLogado") == null)){
	if(fachada.avaliacaoExiste(usuario.getId_user(), estab.getId_estabelecimento()) == true && !(usuario.getId_user() == estab.getId_user())){
	
%>		

</div> <!-- deixar  -->
</div> <!-- deixar -->


  <div class="container">
  <div class="panel panel-success">
    <div class="panel-heading">
    <h3>Comentários 	 </h3>
    </div>

    <div class="panel-footer" style="padding: 10px 35px;">
      
        <div class="row">
          <div id="filter-panel" class="filter-panel">
            <div class="panel panel-default">
              <div class="panel-body">
              
      



<p>
<table class="table table-striped">
	
		<thead>
		<th> USUARIO</th>
		<th> NOTA </th>
		<th> DESCRICAO</th>
<% 
//TERMINAR O REMOVER AVALIACAO
%>		
</thead>
		<tbody>
<%
ArrayList<Avaliacao> listar = fachada.avaliacaoListar(estab.getId_estabelecimento());

for(Avaliacao avaliacao : listar){
contatorAvaliacao++;
	%>	

<tr>
<td><%=avaliacao.getUsuario().getNome()%></td>
<td><%=avaliacao.getNota()%></td>
<td><%=avaliacao.getDescricao()%>
<% if(usuario.getId_user() == avaliacao.getId_user()){
%>
<form action="/ToAqui/RemoverAvaliacaoServlet" method="get">

<input name="nome2" type="hidden" value=<%=estab.getNome()%>>
<input name="id_user2" type="hidden" value=<%=avaliacao.getId_user()%>>
<input name="id_estabelecimento2" type="hidden" value=<%=avaliacao.getId_estabelecimento()%>>

<button type="submit" class="btn btn-default">REMOVER</button>
</form>
</td>
<%} %>
</tr>
</p>
<!-- </tbody> -->
<!-- </table> -->
<%-- 	<caption>AVALIACOES 427 <%=contatorAvaliacao %></caption> --%>
<% 		}%>
</tbody>
<caption> Total de Comentários ja avaliou <span class="badge"><%=contatorAvaliacao %></span></caption>
</table>
        
              
              
              
              
              
              </div>
            </div>
          </div><button type="button" class="btn btn-success glyphicon glyphicon-resize-vertical" data-toggle="collapse"
          data-target="#filter-panel">  </button>
          
        </div>
      </div>

      <div class="clearfix"></div>
    </div>
 </div>


<% 	}else if (fachada.avaliacaoExiste(usuario.getId_user(), estab.getId_estabelecimento()) == false && !(usuario.getId_user() == estab.getId_user())){

	%>
	
	</div> <!-- deixar  -->
</div> <!-- deixar -->


<!-- NOVO  -->


  <div class="container">
  <div class="panel panel-success">
    <div class="panel-heading">
    <h3>Comentários 	 </h3>
    </div>

    <div class="panel-footer" style="padding: 10px 35px;">
      
        <div class="row">
          <div id="filter-panel" class="filter-panel">
            <div class="panel panel-default">
              <div class="panel-body">
              
              
              
                <p>
<table class="table table-striped">
	
		<thead>
		<th> USUARIO</th>
		<th> NOTA </th>
		<th> COMENTARIOS</th>
		
</thead>
		<tbody>
<%
ArrayList<Avaliacao> listar = fachada.avaliacaoListar(estab.getId_estabelecimento());

for(Avaliacao avaliacao : listar){

	contatorAvaliacao++;
%>
<tr>
<td><%=avaliacao.getUsuario().getNome()%></td>
<td><%=avaliacao.getNota()%></td>
<td><%=avaliacao.getDescricao()%></td>
</tr>
</p>
<%
}
%>
</tbody>
<caption> Total de Avaliações <span class="badge"><%=contatorAvaliacao %></span></caption>
</table>
        
              
              
              
              
              
              </div>
            </div>
          </div><button type="button" class="btn btn-success glyphicon glyphicon-resize-vertical" data-toggle="collapse"
          data-target="#filter-panel">  </button>
          
        </div>
      </div>

      <div class="clearfix"></div>
    </div>
 </div>

	
	
	<div class="container-fluid"> 
	<div class="container">

	
	<div class="panel panel-primary"> <!-- PAINEL P FAZER COMENTARIO -->
      <div class="panel-heading">Deixe sua avaliacão e seu comentário </div> <!--  titulo painel -->
      <div class="panel-body"> <!-- PAINEL COMENTARIO -->
      	<form action="/ToAqui/CadastroAvaliacaoServlet" method="post" >
<input name="id_user" type="hidden" value=<%=usuario.getId_user()%> >
<input name="id_estabelecimento" type="hidden" value=<%=estab.getId_estabelecimento()%> >
	
	  <section class="avaliacao">
  <input type="radio" name="nota" class="rating" value="1" /> 1  
        <input type="radio" name="nota" class="rating" value="2" />2
        <input type="radio" name="nota" class="rating" value="3" />3
  
        <big>Comentario: </big></br>
<textarea rows="4" cols="60" maxlength="200" name="descricao" style="border-radius: 1px; width: 40%;
    height: 10em;
    border-radius: 1em;
    border: 1px solid #000; 
    outline: none; 
    resize: none; ">
</textarea>
<!-- <input type="submit" aling="center"  value="AVALIAR" class="btn-success"> -->
 <input type="submit" class="btn btn-info" value="Avaliar">	
<%-- <input type="submit" aling="center"  onclick="location.href = 'CadastroAvaliacaoServlet?id_estabelecimento=<%=estab.getId_estabelecimento()%>?id_user=<%=usuario.getId_user()%>'" value="AVALIAR ONCLICK">	 --%>
 </section>
</form> <!-- FIM FORMULARIO COMENTARIOS -->
   
   
      
      </div> <!-- conteudo painel comentario -->
    </div> <!--  FIM PAINEL -->
</div> <!-- fim container -->
        
   </div>
   </div>
	
<!-- Nota : <input name="nota" type="text" class="form-control input-md" required=""> -->

	
	<% 
	}
}

 
if(sessionLogin.getAttribute("UsuarioLogado") == null){  %>
</div> <!-- deixar  -->
</div> <!-- deixar -->


<!-- NOVO  -->


  <div class="container">
  <div class="panel panel-success">
    <div class="panel-heading">
    <h3>Comentários 	 </h3>
    </div>

    <div class="panel-footer" style="padding: 10px 35px;">
      
        <div class="row">
          <div id="filter-panel" class="filter-panel">
            <div class="panel panel-default">
              <div class="panel-body">
              
              
              
                <p>
<table class="table table-striped">
	
		<thead>
		<th> USUARIO</th>
		<th> NOTA </th>
		<th> COMENTARIOS</th>
		
</thead>
		<tbody>
<%
ArrayList<Avaliacao> listar = fachada.avaliacaoListar(estab.getId_estabelecimento());

for(Avaliacao avaliacao : listar){

	contatorAvaliacao++;
%>
<tr>
<td><%=avaliacao.getUsuario().getNome()%></td>
<td><%=avaliacao.getNota()%></td>
<td><%=avaliacao.getDescricao()%></td>
</tr>
</p>
<%
}
%>
</tbody>
<caption> Total de Comentários eric <span class="badge"><%=contatorAvaliacao %></span></caption>
</table>
        
              
              
              
              
              
              </div>
            </div>
          </div><button type="button" class="btn btn-success glyphicon glyphicon-resize-vertical" data-toggle="collapse"
          data-target="#filter-panel">  </button>
          
        </div>
      </div>

      <div class="clearfix"></div>
    </div>
 </div>



<%
}
%>

              

	<div
		class="a2a_kit a2a_kit_size_32 a2a_floating_style a2a_vertical_style"
		style="left: 0px; top: 300px;" data-a2a-url="toaqui.com/resultadobuscaestabelecimento2.jsp?nome="<%=estab.getNome()%>
		data-a2a-title= <%=estab.getNome() %> %>
		<a class="a2a_dd" href="https://www.addtoany.com/share"></a> <a
			class="a2a_button_facebook a2a_counter"></a> <a
			class="a2a_button_twitter a2a_counter"></a> <a
			class="a2a_button_google_plus"></a>
	</div>
	<script type="text/javascript">
 var a2a_config = a2a_config || {}; 
 a2a_config.locale = "pt-BR"; 
 a2a_config.num_services = 6;
 </script> 
	<script type="text/javascript"
		src="https://static.addtoany.com/menu/page.js"></script>
	<!-- AddToAny END 

	<script async="" src="https://static.addtoany.com/menu/page.js"></script>
<!-- 	<!--vertical menu --> 


<!-- rodape -->
<div id="footer" class="container-fluid" style="width:100%; background-image:linear-gradient(#C0C0C0,#D3D3D3);">

<!-- <div class="footer">
 -->
<footer style="margin-left:35%">

<nav class="navbar" style="">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">ToAqui!</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Principal</a></li>
        <li><a href="#">Contato</a></li>
        <li><a href="#">Anunicar Gratis</a></li>
        <li><a href="#">Duvidas</a></li>
      </ul>
    </div>
  </div>
</nav>
  

</footer>

</div> 	


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});

$(document).ready(function() {
  $('#media').carousel({
    pause: true,
    interval: false,
  });
});

$(function(){
    $('.avaliacao').rating();
});


</script>




</body>
</html>