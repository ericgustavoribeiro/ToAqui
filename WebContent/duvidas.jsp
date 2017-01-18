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

   
   Fachada fachada = Fachada.getInstance();
   
   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- avaliacao -->
    <title>#ToAqui! Festa</title>
        <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    
    <script type="text/javascript" src="avaliacao1/rating.js"></script>
    <link rel="stylesheet" href="avaliacao1/rating.css" type="text/css" media="screen" title="Rating CSS">
    
 <link href="css/datavisao.css" rel="stylesheet">
 
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
<title>#ToAqui!  </title>
</head>
<body>

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
      <a class="navbar-brand" href="index.jsp"> <span class="glyphicon glyphicon-home"></span></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
               <li><a href="listarbar.jsp" ><strong>Bares</strong></a></li>
        <li><a href="listarrestaurante.jsp" ><strong>Restaurantes</strong></a></li>
		<li><a href="listarhotel.jsp"><font color=""><strong>Hoteis</strong></font></a></li>
		<li><a href="listareventos.jsp"><font color=""><strong>Eventos</strong></font></a></li>
		
     
      </ul>

	  
      <form class="navbar-form navbar-left" role="search" style="padding-left:5%;">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Procurando algo?" size="50"  >

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



<!-- codigo para evitar carcters espercias variavel usada somente no banner -->
<!-- fim replace remover caracters especias variavel usada somente no banner-->

<div class="container" style="margin-top: -1%;">

  <div class="panel panel-default" style="height:120px;">
<h1>DUVIDAS</h1>
	
  </div>
</div>
<div class="container" style="margin-top: -1%;">

  <div class="panel" style="">
<h3>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Proin efficitur mi vitae sapien fringilla, a mollis risus luctus.
Cras non nulla a felis interdum ornare vitae et neque.
Nunc et nisl vel arcu imperdiet suscipit.
Fusce vitae risus ac ante dapibus tempus.
Maecenas lobortis nisl sit amet mauris fringilla sodales.
Suspendisse at turpis tempus, volutpat neque in, viverra neque.
Vestibulum vitae magna ultricies enim molestie efficitur.
Sed imperdiet tellus nec lectus accumsan, nec ornare nisi luctus.
Nullam interdum elit bibendum, tincidunt turpis nec, molestie nulla.
Suspendisse eu lectus laoreet, condimentum nisi at, elementum sem.
Quisque vehicula mauris sed diam faucibus dignissim.
Donec vel justo malesuada, volutpat velit id, tincidunt sem.
Etiam vitae eros vitae ligula scelerisque elementum id ac quam.
Duis vehicula urna consequat nisl semper, at rutrum nibh molestie.
Curabitur elementum metus eu tristique porta.
Nunc vitae purus egestas, bibendum neque id, ultricies arcu.
Quisque ultrices mauris id libero porta, id rutrum sapien lobortis.
Etiam in nisl in orci consequat scelerisque nec non dui.
Duis laoreet urna nec mauris rhoncus faucibus.
Aenean bibendum sapien eget lacus sodales, in iaculis dolor accumsan.
Maecenas ut urna ut risus dignissim varius feugiat interdum purus.
Curabitur venenatis dolor a vehicula sodales.	</p>


</h3>
	
  </div>
</div>




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
        <li><a href="contato.jsp">Contato</a></li>
        <li><a href="cadastroestabelecimento.jsp">Anunicar Gratis</a></li>
        <li><a href="duvidas.jsp">Duvidas</a></li>
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