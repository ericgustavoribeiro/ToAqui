<%@page import="com.ejt.adm.Adm"%>
<%@page import="com.ejt.usuario.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	HttpSession sessionLogin = request.getSession();
	Usuario usuario = (Usuario) sessionLogin.getAttribute("UsuarioLogado");
	
	HttpSession sessionLoginAdm = request.getSession();
	Adm adm = (Adm)sessionLoginAdm.getAttribute("AdmLogado");	
	
	if(sessionLogin.getAttribute("UsuarioLogado") == null){		
	response.sendRedirect("index.jsp");
	}else{
	%>
	
<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>#ToAqui - </title>
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
							    <link href="css/csstab.css" rel="stylesheet">
								 

 <link href="css/hrcss.css" rel="stylesheet">

<link href="css/font-awesome.min.css" rel="stylesheet">

<link href="css/menulogin.css" rel="stylesheet">

	
	<link href="css/estilo-less.css" rel="stylesheet">

			<script src="js/jquery.min.js"></script>
 		
			<script src="js/comfirma.js"></script>

 			
<!-- responsavel pelo o mapa -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:600"
	type="text/css" rel="stylesheet" />
<link href="gmapa/estilo.css" type="text/css" rel="stylesheet" />
<link href="gmapa/estiloevento.css" type="text/css" rel="stylesheet" />

<!--  <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script> -->
<script type="text/javascript"
	src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDblV6x_1OBNYBUM7gXLZEx3m_8qhCjnz0&callback&amp;sensor=false"></script>
<script type="text/javascript" src="gmapa/jquery.min.js"></script>
<script type="text/javascript" src="gmapa/mapa.js"></script>
<script type="text/javascript" src="gmapa/jquery-ui.custom.min.js"></script>
<!--fim mapa -->
	
	<!--SCRIPT SLIDER -->
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="js/jssor.slider.mini.js"></script>
	<script type="text/javascript" src="js/tab.js"></script>
	

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
               <li><a href="listarbar.jsp"  ><strong>Bares</strong></a></li>
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
  <div class="col-sm-4" style="margin-left: -5%;"><a href="index.jsp"><img  data-toggle="tooltip" title="ToAqui!" src="img/portal.png" alt=""></a></div> <!-- img logo portal -->
  <div class="col-sm-4" style="margin-left: ;"><a href="cadastrousuario.jsp"><img src="img/anuncieaqui.png" width="550px;"></a></div>
  <div class="col-sm-4" style="padding-left: 25%; padding-top: 2%;"><a href="http://fafica-pe.edu.br/"><img data-toggle="tooltip" title="Fafica" src="img/fafica.jpg" width=""></a></div>

</div>
</div>
<hr class="colorgraph">


    <div class="container"> <!--main-->


	
	   <header class="row">
     
   </header>
   <div class="row">
       <div role="main">
           <!-- conteudo principal -->
		   <div class="panel panel-primary">
      <div class="panel-heading">Olá, <%=usuario.getNome()%> , aproveite o cadastro é 100% Gratuito  <strong></strong></div>
      <div class="panel-body">
	  
	  <div class="row">
    <div class="card hovercard">
        <div class="card-background">
            <img class="card-bkimg" alt="" src="img/slider-bg4.jpg">
            <!-- http://lorempixel.com/850/280/people/9/ -->
        </div>
        <div class="useravatar">
            <img alt="" src="img/novousuario2.png"> <!--foto perfil usuario -->
        </div>
        <div class="card-info"> <span class="card-title"><strong><font color="#FFFFFF"><%=usuario.getNome().toUpperCase()%></font></strong></span>

        </div>
    </div>
    <div class="btn-pref btn-group btn-group-justified btn-group-lg" role="group" aria-label="...">
        
<!--         <div class="btn-group" role="group"> -->
<!--             <button type="button" id="stars" class="btn btn-primary" href="#tab1" data-toggle="tab"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> -->
<!--                 <div class="hidden-xs">Dados Pessoais</div> -->
<!--             </button> -->
<!--         </div> -->
        
        <div class="btn-group" role="group">
            <button type="button" id="favorites" class="btn btn-default" href="#tab1" data-toggle="tab"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                <div class="hidden-xs">Cadastrar Estabelecimento</div>
            </button>
        </div>
<!--         <div class="btn-group" role="group"> -->
<!--             <button type="button" id="following" class="btn btn-default" href="#tab3" data-toggle="tab"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> -->
<!--                 <div class="hidden-xs">Cadastrar Evento</div> -->
<!--             </button> -->
<!--         </div> -->
    </div>

        <div class="well">
      <div class="tab-content">
<!--         <div class="tab-pane fade in active" id="tab1"> ta com dados pessoais -->
         
<!-- 		 <br><br> -->
		 
<!-- 		 <div class="row">  perfil -->
<!--   <div class="col-sm-4">dados do perfil -->
  
<!--   <div class="container-fluid well span6"> -->
<!-- 	<div class="row-fluid"> -->
<!--         <div class="span2" > -->
<!-- 		    <img src="img/novousuario2.png" class="img-circle" width="250px;" height="250px;"> -->
<!--         </div> -->
        



	
		 
		 
<!--         </div> -->
        <div class="tab-pane fade in active" id="tab1"> <!--CADASTRO Estabelecimento -->
          
	<div class="row"style="">
  <div class="col-md-8" style="padding-top:%; margin-left:;">

<form class="form-horizontal" id="formImagem" name="filename" method="post" action="/ToAqui/CadastroEstab" enctype="multipart/form-data">
	
<fieldset>

<!-- Form Name -->
<legend>Cadastro Estabelecimento</legend>


<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="selectbasic">Categoria</label>
  <div class="col-md-4">
    <select id="selectbasic" name="categoria" class="form-control">
      <option value="Bar">Bar</option>
      <option value="Restaurante">Restaurante</option>
      <option value="Hotel">Hotel</option>
    </select>
  </div>
</div>

<!-- File Button --> 
<div class="form-group">
  <label class="col-md-4 control-label" for="filebutton">Foto</label>
  <div class="col-md-4">
    <input id="filebutton" name="imagem" class="input-file" type="file" >
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">* NOME</label>  
  <div class="col-md-4">
  <input id="textinput" name="nome" type="text" placeholder="nome estabelecimento" class="form-control input-md" required="required">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="endereco">* Endereço</label>  
  <div class="col-md-4">
  <input id="txtEndereco" name="logradouro" type="text" placeholder="endereco" class="form-control input-md" required="required">
    <label for="txtLogitude">  	
			<input id="txtLongitude" name="numero" type="hidden" placeholder="longitude" class="form-control input-md" >
	</label> 
	 <label for="txtLatitude">  <input id="txtLatitude" name="bairro" type="hidden" placeholder="latitude" class="form-control input-md" >
		</label>
  </div>
</div>



<div class="form-group">
  <label class="col-md-4 control-label" for="endereco">E-mail:</label>  
  <div class="col-md-4">
  <input id="endereco" name="email" type="text" placeholder="email" class="form-control input-md" >
    
  </div>
</div>

<!-- Telefone input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Telefone</label>  
  <div class="col-md-4">
  <input id="telefone" name="telefone" type="text"	 class="form-control input-md">
    
  </div>
</div>
<!-- Celular input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Celular</label>  
 <div class="col-md-4">
  <input id="celular" name="celular" type="text"  class="form-control input-md">
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="descricao">Descrição</label>
  <div class="col-md-4">                     
    <textarea class="form-control" id="descricao" name="descricao"></textarea>
  </div>
</div>




<!-- Multiple Checkboxes (inline) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="checkboxes">Pagamentos Aceitos</label>
  <div class="col-md-6">
    <label class="checkbox-inline" for="checkboxes-0">
      <input type="checkbox" name="pagamento_visa" id="checkboxes-0" value="Disponivel">
      Visa
    </label>
    <label class="checkbox-inline" for="checkboxes-1">
      <input type="checkbox" name="pagamento_master" id="checkboxes-1" value="Disponivel">
      Master
    </label>
    <label class="checkbox-inline" for="checkboxes-2">
      <input type="checkbox" name="pagamento_hiper" id="checkboxes-2" value="Disponivel">
      Hiper
    </label>
    <label class="checkbox-inline" for="checkboxes-3">
      <input type="checkbox" name="pagamento_cielo" id="checkboxes-3" value="Disponivel">
      Cielo
    </label>

  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="enviar"></label>
  <div class="col-md-4">
    <button id="enviar" name="enviar" class="btn btn-info btn-lg">Cadastrar</button>
  </div>
</div>

</fieldset>
</form>

   

  
  </div>
 
  
   <div class="col-md-4" style="padding-top:5%; margin-left:-10%;">
   
   <div class="row">
<!-- <img src="img/mapat.png"  width="460px" height="360px" > -->   
 
	<div class="form-group">
							
							<div class="col-md-4">
								<input  type="button" id="btnEndereco" name="btnEndereco"
									value="Mostrar endereço no mapa" />
									 
									<label
									for="txtLogitude">  
									<input id="txtLongitude"
									name="numero" type="hidden" placeholder="longitude"
									class="form-control input-md">
								</label>  <label for="txtLatitude">  <input
									id="txtLatitude" name="bairro" type="hidden"
									placeholder="latitude" class="form-control input-md">
								</label>
								
								<!--teste endereco -->

								<div id="apresentacao">
									<fieldset>
										<div id="mapa">
											<!-- endere -->
											<input type="button" id="btnEndereco" name="btnEndereco"
												value="Mostrar no mapa" />
										</div>




									</fieldset>
								</div>


								<!--fim teste -->

							</div>
						</div>

 
   </div> <!-- fim row mapa -->
  </div>
   </div>

		  
        </div>



      </div>
    </div>
  
    </div>
            
    
	  
	  
	  
	  
	  
	  </div>
    </div>
       </div>
   </div>

	</div>
	   		   <hr class="colorgraph">

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


</div> 	

</footer>
	</div>
    </div> <!--fim main -->


		<script>
jQuery(function($){
   $("#celular").mask("(99)9999-9999",{placeholder:" "});
   $("#telefone").mask("(99)9999-9999",{placeholder:" "});
   $("#data_evento").mask("99/99/9999",{placeholder:" "});
   
});



</script>
<script src="js/mascara.js"></script>
 			
 			 			<script src="js/jquery.maskedinput.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
<%} %>
