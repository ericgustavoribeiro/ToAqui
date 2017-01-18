<%@page import="com.ejt.adm.Adm"%>
<%@page import="com.ejt.evento.Evento"%>
<%@page import="com.ejt.fachada.Fachada"%>
<%@page import="com.ejt.estabelecimento.Estabelecimento"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ejt.usuario.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>

<%
	String nome = String.valueOf(request.getAttribute("nome"));
	HttpSession sessionLogin = request.getSession();
	Usuario usuario = (Usuario) sessionLogin.getAttribute("UsuarioLogado");
	Fachada fachada = Fachada.getInstance();

	HttpSession sessionLoginAdm = request.getSession();
	Adm adm = (Adm)sessionLoginAdm.getAttribute("AdmLogado");	

	//	String nome = request.getParameter("busca");
%>
<!DOCTYPE html>
<html lang="pt">
  <head>
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
					<link href="css/bootstrap-theme.min.css" rel="stylesheet">
			    <link href="css/corfundo.css" rel="stylesheet">
				 <link href="css/hrcss.css" rel="stylesheet">


<link href="css/font-awesome.min.css" rel="stylesheet">

<link href="css/menulogin.css" rel="stylesheet">
<link href="css/csstab.css" rel="stylesheet">


	
	<link href="css/estilo-less.css" rel="stylesheet">
<!--bootstrap-->








	

       <script src="js/jquery-1.7.2.min.js"></script>
       <script src="js/lightbox.js"></script>
       <link href="css/hrcss.css" rel="stylesheet">

       <link href="css/lightbox.css" rel="stylesheet" />
		

	

	
	<!--SCRIPT SLIDER -->
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="js/jssor.slider.mini.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	
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
<%if (request.getAttribute("messagemErro") != null){%>
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
	
	</section>
	<hr class="colorgraph">

<div class="container-fluid" style=""  > <!-- div fundo listar -->
	<div class="container-fluid" style="">
		<!-- div fundo listar -->
		<div class="container" style="">
			<!--  COLOCAR LISTAR  -->
			<hr>

			<div class="row">

				<%
					ArrayList<Estabelecimento> listar = fachada.estabelecimentoListarBuscaNome(nome);

					if(listar.size()==0){%>
						
						
						
    <div class="alert alert-danger">
        <a href="cadastroestabelecimento.jsp" class="btn btn-xs btn-info pull-right">cadastre agora um novo estabelecimento</a>
        <center>
        <img src="img/OPS.png"><br>
        <strong> NENHUM ESTABELECIMENTO ENCONTRADO</strong> 
   </center>
    </div>
					<% }else{
					for (Estabelecimento estabs : listar) {
				%>

				<div class="col-md-4">

					<div id="gallery">
						<ul>
							<li><a href="<%=estabs.getImagem()%>" rel="lightbox"
								title="<%=estabs.getNome().toUpperCase()%>" class="thumbnail">
									<strong> <%=estabs.getNome().toUpperCase()%></strong> <img
									src="<%=estabs.getImagem()%>" width="350" height="350" alt=""
									title="Img#1" />
							</a>

								<button
									onclick="location.href='resultadobuscaestabelecimento.jsp?nome=<%=estabs.getNome()%>'"
									type="button" class="btn btn-info"
									style="margin-top: -20%; margin-left: 85%;">
									<i class="glyphicon glyphicon-info-sign" data-toggle="tooltip"
										data-placement="top"
										title="Mais informaçoes sobre o estabelecimento""> Info</i>
								</button></li>
						</ul>

						</li>
						</ul>

					</div>



				</div>



				<%
					}
					}
				%>
				<!-- fim do for listar -->



  
   
 

  
  
  

</div>

</div> <!-- cote fluid -->
<hr>





</div></div>
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

</script>



	
	
	
	
  </body>
</html>