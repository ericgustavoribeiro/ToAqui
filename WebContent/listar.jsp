<%@page import="com.ejt.adm.Adm"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.ejt.fachada.Fachada"%>
<%@ page import="com.ejt.usuario.Usuario"%>
<%@ page import="com.ejt.estabelecimento.Estabelecimento"%>
<% 
HttpSession sessionLogin = request.getSession();
Usuario usuario = (Usuario)sessionLogin.getAttribute("UsuarioLogado");

Fachada fachada = Fachada.getInstance();

HttpSession sessionLoginAdm = request.getSession();
Adm adm = (Adm)sessionLoginAdm.getAttribute("AdmLogado");	


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

	
	<link href="css/estilo-less.css" rel="stylesheet">
<!--bootstrap-->





	    <link href="adm/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">



	

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
      <a class="navbar-brand" href="#">Home</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#"><font color="#"><strong>Bares</strong></font><span class="sr-only">(current)</span></a></li>
        <li><a href="#" ><strong>Restaurantes</strong></a></li>
		<li><a href="#"><font color=""><strong>Hoteis</strong></font></a></li>
		<li><a href="#"><font color=""><strong>Eventos</strong></font></a></li>
		
     
      </ul>

	  
      <form class="navbar-form navbar-left" role="search" style="padding-left:5%;">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Procurando algo?" size="40"  >

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


<div class="row"> <!-- LOGO PORTAL -->
  <div class="col-md-3">
   <a href="index.jsp"> <center><img class="img-responsive" src="img/logo.png" width="160px" height="160px" data-toggle="tooltip" data-placement="top" title="Portal ToAquis!" ></center></a>

  
  
  </div>
  <div class="col-md-9">
  <div class="row">
  <div class="col-sm-8" style="padding-left:10%;">
      <img class="img-responsive" src="img/anuncieaqui.jpg" width="600px" height="150px">

  
  </div>
  <div class="col-sm-4">
        <img class="img-responsive" src="img/fafica.jpg" width="" height="">

  
  </div>
</div>

  </div>
</div> <!-- FIM LOGO fafica -->
<hr class="colorgraph">







<div class="panel-heading">    
  
  
<!-- <div class="alert alert-info" role="alert">Anunicar</div>
 -->  </div>

  <div class="col-md-12" style="background-image:url('img/slider-bg5.jpg'); margin-left:"   ><!-- div central -->
<div class="container"  style="  margin-bottom:2% " >
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
	        <li data-target="#myCarousel" data-slide-to="4"></li>

    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="img/foto1.jpg" alt="Chania" width="700" height="420">
        <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
        </div>
      </div>

      <div class="item">
        <img src="img/foto2.jpg" alt="Chania"width="700" height="420">
        <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
        </div>
      </div>
    
      <div class="item">
        <img src="img/foto3.jpg" alt="Flower" width="700" height="420">
        <div class="carousel-caption">
          <h3>Flowers</h3>
          <p>Beatiful flowers in Kolymbari, Crete.</p>
        </div>
      </div>

      <div class="item">
        <img src="img/foto4.jpg" alt="Flower" width="700" height="420">
        <div class="carousel-caption">
          <h3>Flowers</h3>
          <p>Beatiful flowers in Kolymbari, Crete.</p>
        </div>
      </div>
  
   <div class="item">
        <img src="img/foto5.png" alt="Chania" width="700" height="420">
        <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
        </div>
      </div>

  
    </div>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div> 
  
  
</div> <!-- FIM SLIDER -->
  
   
	<section class="" style="border-radius:1px;  background-image: linear-gradient(#1A8BE2,#004FA6);" >

		<div class="container">

			<div class="col-md-6">

			
					  <img style="padding: 0%;" src="images/facebook48.png"> 
					<img style="padding: 0%;"src="images/instagram48.png"> 
					<img style="padding: 0%;"src="images/twitter48.png"> 
					<img style="padding: 0%;"src="images/snapchat48.png"> 
					
			

			</div>

			<div class=" col-md-6">


			</div>

			<div class="col-md-6 " style="padding: 10px;"> <!--div procurar meuio pagina -->
				<div class="search-bar">
	<form action="http://www.baixarsertanejo.com" id="search-form" method="get">
		<input type="search" name="s" placeholder="Buscar..." value=""
		x-webkit-speech speech required onwebkitspeechchange="this.form.submit()"
		>
		<img src="images/procurarlogo.png" class="go" onclick="$('#search-form').submit();">
	</form>
</div>
			</div> <!--fim div procurar meio pagina -->

		</div>

	
	</section>
	<hr class="colorgraph">

<div class="container-fluid" style=""  > <!-- div fundo listar -->
<div class="container" style="">  <!--  COLOCAR LISTAR  -->
<hr>

 <div class="row">

			<%
				ArrayList<Estabelecimento> listar = fachada.estabelecimentoListar();
				
				for (Estabelecimento estabs : listar) {
					
					%>	
					
					      <div class="col-md-4">
   
      <div id="gallery">
       <ul><li>	
<a href="<%=estabs.getImagem() %>" rel="lightbox" title="<%=estabs.getNome().toUpperCase() %>" class="thumbnail">
<strong> <%=estabs.getNome().toUpperCase() %></strong>

<img src="<%=estabs.getImagem() %>" width="350" height="350" alt="" title="Img#1" /></a>

            <button onclick="location.href='resultadobuscaestabelecimento2.jsp?nome=<%=estabs.getNome()%>'" type="button" class="btn btn-info" style="margin-top:-20%; margin-left: 85%;"><i class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="top" title="Mais informaçoes sobre o estabelecimento""> Info</i></button></li></ul>

	  </li>
	  </ul>
	   
	   </div>
   


  </div>
					
					
				
<% }
	%> <!-- fim do for listar -->




  
   
 

  
  
  

</div>

</div> <!-- cote fluid -->
<hr>






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