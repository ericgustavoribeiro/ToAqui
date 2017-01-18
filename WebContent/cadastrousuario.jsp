<%@page import="com.ejt.usuario.Usuario"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>#To Aqui</title>


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
	<link href="css/csstab" rel="stylesheet">

		

	

	
	<!--SCRIPT SLIDER -->
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="js/cadastro.js"></script>

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

	  
      <form class="navbar-form navbar-left" role="search" style="padding-left:10%;">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Procurando algo?" size="50"  >

        </div>
        <button type="submit" class="btn btn-default">Procurar</button>
      </form>
	 
      
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
									<a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
									<a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
								</div>
                                or
								 <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">Email</label>
											 <input type="email" class="form-control" id="exampleInputEmail2" placeholder="seu@email.com" required>
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputPassword2">Senha</label>
											 <input type="password" class="form-control" id="exampleInputPassword2" placeholder="senha" required>
                                             <div class="help-block text-right"><a href="">Esqueceu sua senha?</a></div>
										</div>
										<div class="form-group">
											 <button type="submit" class="btn btn-primary btn-block">Login</button>
										</div>
										<div class="checkbox">
											 <label>
											 <input type="checkbox"> keep me logged-in
											 </label>
										</div>
								 </form>
							</div>
							<div class="bottom text-center">
								Novo aqui? <a href="cadastrousuario.html"><b>Cadastre-se </b></a>
							</div>
					 </div>
				</li>
			</ul>
        </li>
      </ul>


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


<div class="row"> <!-- LOGO PORTAL -->
  <div class="col-md-3">
   <a href="index.html"> <center><img class="img-responsive" src="img/logo.png" width="160px" height="160px" data-toggle="tooltip" data-placement="top" title="Portal ToAqui!" ></center></a>

  
  
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



<div class="row" style="margin-top:0%; margin-left: 0%;"> <!--div inicial slider -->





  
  <div class="panel panel-default"  style="margin-left:-5%; background-image:url('img/slider-bg4.jpg');  " >
  <div class="panel-heading">    </div>
  <div class="panel-body">
  
  <div class="row">
  <div class="col-sm-4" style="margin-top:4%; padding-left:20%;">
 <CENTER> <img class="img-responsive" src="img/novousuario2.png" width="300px;" height="200px;" data-toggle="tooltip" data-placement="top" title="Novo Usuario" > </CENTER>

  
  
  
  </div>
  <div class="col-sm-8" style="margin-right:0%; padding-right:10%;"  > <!--div com cadastrousuario -->
  
  <div class="container">

<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form role="form" method="post" action="/ToAqui/CadastroUsuarioServelt">
			<h2><strong><font color="White">Cadastre-se</font> </strong><small>é gratuito.</small></h2>
			<hr class="colorgraph">
			<div class="form-group">
				<input type="text" name="nome" id="display_name" class="form-control input-lg" placeholder="Nome" tabindex="3">
			</div>
			<div class="form-group">
				<input type="email" name="email" id="email" class="form-control input-lg" placeholder="Endereço de email" tabindex="4">
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="password" name="senha" id="password" class="form-control input-lg" placeholder="Senha" tabindex="5">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
<!-- 					 <input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-lg" placeholder="Confirme a senha" tabindex="6"> -->
					
					</div>
				</div>
			</div>
       
			<div class="row">
				<div class="col-xs-4 col-sm-3 col-md-3">
					<span class="button-checkbox">
						<button type="button" class="btn" data-color="info" tabindex="7">Eu aceito</button>
                        <input type="checkbox" name="t_and_c" id="t_and_c" class="hidden" value="1">
					</span>
				</div>
				<div class="col-xs-8 col-sm-9 col-md-9">
					 Ao clicar em <strong class="label label-primary">Eu aceito</strong>, você concorda com os <a href="#" data-toggle="modal" data-target="#t_and_c_m"><font color="White">Termos e condições</font></a> estabelecidos pelo site.
				</div>
			</div>
			
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 col-md-6">
					<input  type="submit" value="Cadastrar"/> 
<!-- 				<input type="submit" value="Registrar-se" class="btn btn-primary btn-block btn-lg" tabindex="7"></div> -->
			</div>
		</form>
	</div>
</div>
<!-- Modal -->
<div class="modal fade" id="t_and_c_m" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">Ã</button>
				<h4 class="modal-title" id="myModalLabel">Termos e condiÃ§Ãµes</h4>
			</div>
			<div class="modal-body">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">Eu aceito</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</div>
  
  
  
  
  
  
  </div>
</div>
  
  
  </div>
</div>


  
  

  
</div> <!-- FIM SLIDER -->
  
   
	<section class="" style="border-radius:1px;  background-image: linear-gradient(#1A8BE2,#004FA6); margin-top:-1%; " >

		<div class="container">

			<div class="col-sm-12">

			<center>
					  <img style="padding: 5%;" src="images/facebook48.png"> 
					<img style="padding: 5%;"src="images/instagram48.png"> 
					<img style="padding: 5%;"src="images/twitter48.png"> 
					<img style="padding: 5%;"src="images/snapchat48.png"> 
					
			
</center>
			</div>

		

	<!--		<div class="col-md-6 " style="padding: 10px;"> <!--div procurar meuio pagina
				<div class="search-bar">
	<form action="http://www.baixarsertanejo.com" id="search-form" method="get">
		<input type="search" name="s" placeholder="Buscar..." value=""
		x-webkit-speech speech required onwebkitspeechchange="this.form.submit()"
		>
		<img src="images/procurarlogo.png" class="go" onclick="$('#search-form').submit();">
	</form>
</div>
			</div> --> <!--fim div procurar meio pagina -->

		</div>

	
	</section>








<hr>
<!--  fim teste novo anuncio de categoras -->


</div>
<hr>


<!-- rodape -->
<div id="footer" class="container-fluid" style="width:100%; background-image:linear-gradient(#C0C0C0,#D3D3D3);">

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