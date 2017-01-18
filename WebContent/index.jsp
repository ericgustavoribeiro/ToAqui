<%@page import="com.ejt.adm.Adm"%>
<%@page import="com.ejt.usuario.Usuario"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<% 
HttpSession sessionLogin = request.getSession();
Usuario usuario = (Usuario)sessionLogin.getAttribute("UsuarioLogado");

HttpSession sessionLoginAdm = request.getSession();
Adm adm = (Adm)sessionLoginAdm.getAttribute("AdmLogado");	

%>
<!DOCTYPE html>
<html lang="pt">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>#To Aqui </title>


    
    
	    <link href="adm/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
	
	
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

			<link href="css/csstab.css" rel="stylesheet">
		
	<script type="text/javascript" src="js/comfirma.js"></script>

	
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
               <li><a href="listarbar.jsp" role="Bares" ><strong>Bares</strong></a></li>
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
          <button type="button" class="btn btn-danger"  data-dismiss="modal" alt="Botao fechar">Fechar</button>
        </div>
      </div>
    </div>
  </div>




<!--  fim teste modal r -->





<%} %>
<!-- FIM NK  erroa aqui -->


<div class="container">
 <div class="row">
  <div class="col-sm-4" style="margin-left:-3%;"><a href="index.jsp"><img  data-toggle="tooltip" title="ToAqui!" src="img/portal.png"  alt="LOGO PORTAL"></a></div> <!-- img logo portal -->
  <div class="col-sm-4" style="margin-left:-90px;"><a href="cadastrousuario.jsp"><img src="img/anuncieaqui.png" width="650px;" height="200px;" alt="LOGO ANUNCIAR"></a></div>
  <div class="col-sm-4" style="padding-left: 30%; padding-top: 2%;"><a href="http://fafica-pe.edu.br/"><img data-toggle="tooltip" title="Fafica" src="img/fafica.jpg" width="" alt="LOGO FAFICA"></a></div>

</div>
</div>

<hr class="colorgraph">


<!-- fim base inicial  -->




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
        <img src="images/banner/viaregionalbanner.png" alt="Chania" width="700" height="420">
        <div class="carousel-caption">
          <h3>Anuncie</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
        </div>
      </div>

      <div class="item">
        <img src="images/banner/freguesiabanner.jpg" style="max-height: 700px; min-width: 420px;" alt="Chania"width="700px;" height="420px;">
        <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
        </div>
      </div>
    
      <div class="item">
        <img src="images/banner/bardoarrumadinhobanner.jpg" alt="Flower" width="700" height="420">
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

			
					  <img style="padding: 0%;" src="images/facebook48.png" alt="logo facebook"> 
					<img style="padding: 0%;"src="images/instagram48.png" alt="logo instagram"> 
					<img style="padding: 0%;"src="images/twitter48.png" alt="logo twitter"> 
					<img style="padding: 0%;"src="images/snapchat48.png" alt="logo snapchat"> 
					
			

			</div>

			<div class=" col-md-6">


			</div>

			<div class="col-md-6 " style="padding: 10px;"> <!--div procurar meuio pagina -->
				<div class="search-bar">
				
	
				
	<form  action="/ToAqui/BuscarServlet"  id="search-form" method="get">
		<input type="text" name="s" placeholder="Buscar..." value=""
		
		>
		<img src="images/procurarlogo.png" class="go" onclick="$('#search-form').submit();">
	</form>
</div>
			</div> <!--fim div procurar meio pagina -->

		</div>

	
	</section>
	
	<div> 




<div class="container-fluid" style="margin-top: 1%;">

  <div class="panel panel-default" style="background-image:url('img/fundocategoria.jpg');height:450px;">
<!--   <div class="panel panel-default" style="background-image:url('img/festa.jpg');height:250px;"> -->
  
    <div class="panel-body">

    <section class="container" style="margin-top:1.5%;">
    
  <center><img src="img/ESCOLHA.png"></center>
    <br>
<div class="row">
            <div class="col-sm-3" >
            <a href="listareventos.jsp">
                <img class="img-circle img-responsive img-center" src="http://toaqui.pe.hu/img/iconEvento2.png" alt="LOGO EVENTOS" data-toggle="tooltip" data-placement="top" title="Eventos" style="border-radius:1px;">
		<h1 id="fonte-nova"><center> <img  class="img-responsive" src="img/EVENTO.png" ></center>
		</a>
		
		</h1> 
                
          
            </div>
            <div class="col-sm-3">
            <a href="listarbar.jsp">
                <img class="img-circle img-responsive img-center" src="http://toaqui.pe.hu/img/iconBar2.png" alt="LOGO BAR" data-toggle="tooltip" data-placement="top" title="Bares" style="border-radius:1px;">
                		<h1 id="fonte-nova"><center> <img class="img-responsive" src="img/BARES.png" alt="bares"></center></h1>
               </a>
            </div>
            <a href="listarhotel.jsp">
            <div class="col-sm-3">
                <img class="img-circle img-responsive img-center" src="http://toaqui.pe.hu/img/iconHotel2.png" alt="LOGO HOTEL" data-toggle="tooltip" data-placement="top" title="Hoteis" style="border-radius:1px;" >
               		<h1 id="fonte-nova"><center> <img  class="img-responsive" src="img/HOTEIS.png" alt="hoteis"></center></h1>
			 </a>
               
            </div>
			<div class="col-sm-3">
			<a href="listarrestaurante.jsp">
                <img class="img-circle img-responsive img-center" src="http://toaqui.pe.hu/img/iconRestaurante2.png" alt="LOGO RESTAURANTE" data-toggle="tooltip" data-placement="top" title="Restaurantes" style="border-radius:1px;">
                		<h1 id="fonte-nova"><center> <img   class="img-responsive" src="img/RESTAURANTES.png" style="width: 250px;" alt="restaurentes"> </center></h1>
				</a>
                
            </div>
        </div>
</section>
    
 
<!-- 		<img src="img/iconEvento.png" style="margin-top:10px; margin-left:40%; height:220px; text-align:center;font-size:50px;text-shadow:3px 2px 2px gray; color:white;"> -->
	</div>
  </div>
</div>

















</div>







<!-- teste novo anuncio de categoras -->
<div class="container">  <!--  classe container com categorias -->
	






</div> <!-- fim classe container com categorias -->

<hr>
<!--  fim teste novo anuncio de categoras -->


<hr class="colorgraph">

<!-- NK vai entrar o erroa aqui -->
<%if (request.getAttribute("mensagemErro") != null){%>

 <div class="alert alert-danger"  role="alert" id="texto">
 <center>
 <span class=" fa fa-exclamation-triangle" aria-hidden="true"></span>
 <span class="sr-only" Error:></span>
 <%= request.getAttribute("mensagemErro") %>
 
 </center>

</div>

<%} %>




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
        <li><a href="adm/index.html">Adminstração</a>
<!--         AQUI ERIC -->
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