<%@page import="com.ejt.adm.Adm"%>
<%@page import="com.ejt.estabelecimento.Estabelecimento"%>
<%@page import="com.ejt.usuario.Usuario"%>
<%@ page import="com.ejt.fachada.Fachada"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ejt.evento.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	HttpSession sessionLogin = request.getSession();
	Usuario usuario = (Usuario) sessionLogin.getAttribute("UsuarioLogado");
	
	HttpSession sessionLoginAdm = request.getSession();
	Adm adm = (Adm)sessionLoginAdm.getAttribute("AdmLogado");	

	
	
	 int contadorEstabelecimento = 0;
	 int id_estabelecimento = 0;
		int contadorEstabelecimentoPedente =0;
		int contadorEventos = 0;
		int contadorEventosPedente = 0;

		int id_evento = 0;
		
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
    <title>#ToAqui! <%=usuario.getNome() %></title>
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
<!-- 			    <link href="css/corfundo.css" rel="stylesheet">
 -->							    <link href="css/csstab.css" rel="stylesheet">
								 

 <link href="css/hrcss.css" rel="stylesheet">

<link href="css/font-awesome.min.css" rel="stylesheet">

<link href="css/menulogin.css" rel="stylesheet">

	
	<link href="css/estilo-less.css" rel="stylesheet">

			<script src="js/jquery.min.js"></script>
			<script src="js/comfirma.js"></script>
 
 

	
	<!--SCRIPT SLIDER -->
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="js/tab.js"></script>
	
	<script type="text/javascript" src="js/painelevento.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	
	<style>
 
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

<hr class="colorgraph">


<!-- fim base inicial  -->

  <div class="col-md-12" style="background-image:url('images/fundocinza.png'); margin-left:0%; "><!-- div central -->

    <div class="container"> <!--main-->


	
	   <header class="row">
     
   </header>
   
   
   <div class="row">
       <div role="main">
           <!-- conteudo principal -->
		   <div class="panel panel-primary">
      <div class="panel-heading">Olá, <%=usuario.getNome() %> </div>
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
        <div class="card-info"> <span class="card-title"><strong><font color="#FFFFFF"><%=usuario.getNome() %></font></strong></span>

        </div>
    </div>
    <div class="btn-pref btn-group btn-group-justified btn-group-lg" role="group" aria-label="...">
        <div class="btn-group" role="group">
            <button type="button" id="stars" class="btn btn-primary" href="#tab1" data-toggle="tab"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                <div class="hidden-xs">Dados Pessoais</div>
            </button>
        </div>
        <div class="btn-group" role="group">
            <button type="button" id="favorites" class="btn btn-default" href="#tab2" data-toggle="tab"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                <div class="hidden-xs">Seus Estabelecimentos</div>
            </button>
        </div>
        <div class="btn-group" role="group">
            <button type="button" id="following" class="btn btn-default" href="#tab3" data-toggle="tab"><span class="glyphicon glyphicon-music" aria-hidden="true"></span>
                <div class="hidden-xs">Seus Eventos</div>
            </button>
        </div>
    </div>

        <div class="well">
      <div class="tab-content">
        <div class="tab-pane fade in active" id="tab1"> <!--ta com dados pessoais -->
         
		 <br><br>
		 
		 <div class="row"> <!--  perfil -->
  <div class="col-sm-4"><!-- dados do perfil -->
  
  <div class="container-fluid well span6">
	<div class="row-fluid">
        <div class="span2" >
		    <img src="img/novousuario2.png" class="img-circle" width="250px;" height="250px;">
        </div>
        
        <div class="span8">
            <h4>Usuario: <%=usuario.getNome() %></h4>
            <h6>Email: <strong> <%=usuario.getEmail() %></strong></h6>
            <h6></h6>
            <h6></h6>
            <h6><a href="#"> </a></h6>
        </div>
        

</div>

</div>
  </div> <!-- fim dados do perfil -->
  
  <div class="col-sm-8"><!-- quantidades de anuncios -->
  
  
    <div class="container-fluid well span6">
	<div class="row-fluid">
        <div class="span2" >
        </div>
        
        <div class="span8">
            
  <h2>Seus dados pessoais</h2>
  <form class="form-horizontal" role="form">
    

    <div class="form-group has-success has-feedback">
      <label class="col-sm-2 control-label" for="inputSuccess">Nome:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="inputSuccess" value="<%=usuario.getNome() %>" disabled >
        <span class="glyphicon glyphicon-pencil form-control-feedback"></span>
      </div>
    </div>
    <div class="form-group has-success has-feedback">
      <label class="col-sm-2 control-label" for="inputSuccess">E-mail:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="inputSuccess" value="<%=usuario.getEmail() %>" disabled >
        <span class=" form-control-feedback">@</span>
      </div>
    </div>
 
  </form>
  <div class="row">
  <div class="col-sm-12" style="padding-left:65%;">
   <a href="alterarusuario.jsp" type="button" class="btn btn-info btn-md ">ALTERAR</a>
   <input type="submit" class="btn btn-danger btn-md" value="EXCLUIR CONTA" name="btnEnviar" onclick="window.location.href='RemoverUsuarioServlet?id_user=<%=usuario.getId_user()%>'"> 
   </div>
 
</div>
 

			
			
        </div>
        

</div>

</div>
  
  
  
  
  </div> <!-- fim quantidades de anuncios -->
</div>

        </div>
        
        <div class="tab-pane fade in " id="tab2"> <!-- ESTABELECIMENTOS LISTAR TODOS AQUI -->
      
<div class="container-fluid"> <!-- CONTEUDO -->


 <div class="panel-group" id="accordion">
    <div class="panel panel-primary class">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Estabelecimentos Aprovados <i class="glyphicon glyphicon-resize-vertical"></i></a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body"><!-- conteudo listar -->
        
 
                      <%
		Fachada fachada = Fachada.getInstance();
		
	%>
         
             <table class="table table-striped custab">
       <thead>
        <tr>
            <th>ID</th>
            <th> Foto </th>
            <th>Nome</th>
            <th>Endereço</th>
            <th> Telefone </th>
          <th class="text-center"><a class="glyphicon glyphicon-pencil"></a></th>
          <th class="text-center"><a class="glyphicon glyphicon-plus"></a></th>
        
        </tr>
    </thead>
    
    <%
				ArrayList<Estabelecimento> listar = fachada.estabelecimentoListarCadastrados(usuario.getId_user());			                           
				for (Estabelecimento estabs : listar) {
					contadorEstabelecimento++;
			
			
					
			%>
			<% id_estabelecimento = estabs.getId_estabelecimento(); %>
			
			 <tr>
                <td><%=estabs.getId_estabelecimento()%></td>
                <td> <img src="<%=estabs.getImagem() %>" width="200px;"> </td>
                <td><%=estabs.getNome() %></td>
                <td><%=estabs.getEndereco().getEndereco() %></td>
                <td><%=estabs.getContato().getTelefone() %>
                
                
                <td class="text-center">
                  <input type="submit" class="btn btn-primary " aling="center" onclick="location.href='alterarestabelecimento.jsp?id_estabelecimento=<%=estabs.getId_estabelecimento()%>'" value="Alterar"><br>
                
                </td>
     <td>               <button onclick="location.href='resultadobuscaestabelecimento.jsp?nome=<%=estabs.getNome()%>'" type="button" class="btn btn-info" ><i class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="top" title="Mais informaçoes sobre o estabelecimento""> Info</i></button></td> 
                 </td>
            </tr>
			
			<% } %>
    
    
 
           
   <caption>APROVADOS</caption>
    </table>
         
        
        </div><!-- fim conteudo listar -->
              <div class="panel-footer">Anuncios Enviados : <%= contadorEstabelecimento %></div>
        
      </div>
    </div>







</div> <!-- fim conteudo -->




 <div class="panel-group" id="accordion">
    <div class="panel panel-danger class">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Estabelecimentos Pedentes <i class="glyphicon glyphicon-resize-vertical"></i></a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse in">
        <div class="panel-body"><!-- LISTAR PEDENTES -->
        
        <% ArrayList<Estabelecimento> listars = fachada.estabelecimentoListarCadastradosPendentes(usuario.getId_user());
    if(listars.size() == 0){
    %>
  
     <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <strong>Ops!</strong> Você não tem nenhum cadastro pedente. <a href="cadastroestabelecimento.jsp"> Cadastrar novo Estabelecimento</a>
            </div>
            <div class="well">
            
            <img src="img/logo.png" style="padding-left: 35%;">
            <br>
            
            
            </div>
  
  
    <% }if(!(listars.size() == 0)){%>
    <table class="table table-striped custab">
      <thead>
        <tr>
            <th>ID</th>
            <th> Foto </th>
            <th>Nome</th>
            <th>Endereço</th>
            <th> Telefone </th>
          <th class="text-center"><a class="glyphicon glyphicon-pencil"></a></th>
          <th class="text-center"><a class="glyphicon glyphicon-plus"></a></th>
        
        </tr>
    </thead>
        <tbody>
		<% 
    				for (Estabelecimento estabs : listars) {
					
					contadorEstabelecimentoPedente++;				
				
					
				%>
				
			<% id_estabelecimento = estabs.getId_estabelecimento(); %>
			
			
			
			
			 <tr>
                <td><%=estabs.getId_estabelecimento()%></td>
                <td> <img src="<%=estabs.getImagem() %>" width="200px;"> </td>
                <td><%=estabs.getNome() %></td>
                <td><%=estabs.getEndereco().getEndereco() %></td>
				<td><%=estabs.getContato().getTelefone() %>                
                <td class="text-center">
                  <input type="submit" class="btn btn-primary " aling="center" onclick="location.href='alterarestabelecimento.jsp?id_estabelecimento=<%=estabs.getId_estabelecimento()%>'" value="Alterar"><br>
                </td>
                <td>
<%--  <input type="submit" class="btn btn-danger" aling="center"  onclick="location.href = 'RemoverEstabelecimentoServlet?id_estabelecimento=<%=estabs.getId_estabelecimento()%>'" value="Remover"> --%>
     <td>               <button onclick="location.href='resultadobuscaestabelecimento.jsp?nome=<%=estabs.getNome()%>'" type="button" class="btn btn-info" ><i class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="top" title="Mais informaçoes sobre o estabelecimento""> Info</i></button></td> 
            </tr>
			
			    
			<% 
    				}
	%>			
    </tbody>
    <caption>Anuncios Enviados : <%= contadorEstabelecimentoPedente %></caption>
    </table>
    <% 
    }
				 %>
    
    
        
        
        
        </div> <!-- FIM LISTAR PEDENTES -->
              <div class="panel-footer">Panel Footer</div>
        
      </div>
    </div>







</div>



</div>

		  
        </div> <!--  FIM TAB 2 -->
        
        
        <!-- TESTE -->
        
                <div class="tab-pane fade in " id="tab3"> <!-- ESTABELECIMENTOS LISTAR TODOS AQUI -->
      


<div class="container-fluid"> <!-- CONTEUDO -->


 <div class="panel-group">
  <div class="panel panel-primary class">
    <div class="panel-heading">
      <h4 class="panel-title ">
        <a data-toggle="collapse" href="#collapse12">Eventos Aprovados <i class="glyphicon glyphicon-resize-vertical"></i> </a>
      </h4>
    </div>
    <div id="collapse12" class="panel-collapse collapse">
      <div class="panel-body"><!-- EVENTOS APROVADOS -->
      
     <%
    ArrayList<Evento> listare2 = fachada.eventoListarCadastrados(usuario.getId_user());		                           
		
	%>  
         <table class="table table-striped custab">
    
           <thead>
        <tr>
            <th>Código</th>
            <th> Foto </th>
            <th>Nome</th>
            <th>Local</th>
            <th> Endereço </th>
            <th class="text-center"><a class="glyphicon glyphicon-pencil"></a></th>
                        <th class="text-center"><a class="glyphicon glyphicon-plus"></a></th>
            
        </tr>
    </thead>
    <tbody>
     
<!--       <h1> COLOCA AQUI O LISTAR EVENTO APROVADO</h1> -->
      
      <%
				for (Evento evento : listare2) {
					contadorEventos++;
			
			
					
			%>
			<% id_evento = evento.getId_evento(); %>
			
			 <tr>
			
                <td><%=evento.getId_evento()%></td>
                 <td> <img src="<%=evento.getImagem()%>" width="200px;"></td>
                
                <td onclick="location.href='resultadoevento.jsp?nome=<%=evento.getNome()%>'"><%=evento.getNome()%></td>
                <td><%=evento.getLocal() %></td>
                <td class="text-center"> <%=evento.getEndereco().getEndereco() %> </a> 
                
                </td>
                
                <td class="text-center">
<!--                 <a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a> -->
                  <input type="submit" class="btn btn-primary " aling="center" onclick="location.href='alterarevento.jsp?id_evento=<%=evento.getId_evento()%>'" value="Alterar"><br>
                
                </td>
    
     <td>               <button onclick="location.href='resultadoevento.jsp?nome=<%=evento.getNome()%>'" type="button" class="btn btn-info" ><i class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="top" title="Mais informaçoes sobre o estabelecimento""> Info</i></button></td> 
                
            </tr>
            
            
            
            
            
            
            
			
			<% } 
    %>
    </tbody>
   <caption>Anuncios Enviados : <%= contadorEventos %></caption>
    </table>
    

      
      </div> <!-- FIM EVENTOS APROVADOS -->
      <div class="panel-footer">Panel Footer</div>
    </div>
  </div>
</div>

 <div class="panel-group">
  <div class="panel panel-danger class">
    <div class="panel-heading">
      <h4 class="panel-title "> 
        <a data-toggle="collapse" href="#collapse123">Eventos Pedentes <i class="glyphicon glyphicon-resize-vertical"></i> </a>
      </h4>
    </div>
    <div id="collapse123" class="panel-collapse collapse">
      <div class="panel-body"><!-- LISTANDO PEDENTES -->
      
      <%
    //LISTAR EVENTOS PENDENTES
    
    
    
    ArrayList<Evento> listare = fachada.eventoListarCadastradosPendentes(usuario.getId_user());		                           
	if(listare.size() == 0){	
    %>
    
  
     <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <strong>Ops!</strong> Você não tem nenhum cadastro pedente. <a href="cadastroevento.jsp"> Cadastrar novo Evento</a>
            </div>
            <div class="well">
            
            <img src="img/logo.png" style="padding-left: 35%;">
            <br>
            
            
            </div>
           
    <%}if(!(listare.size() == 0)){ %>
   
   
   

   
    <table class="table table-striped custab">
    
           <thead>
        <tr>
            <th>Código</th>
            <th> Foto </th>
            <th>Nome</th>
            <th>Local</th>
            <th> Endereco </th>
          <th class="text-center"><a class="glyphicon glyphicon-pencil"></a></th>
                        <th class="text-center"><a class="glyphicon glyphicon-plus"></a></th>
            
        </tr>
    </thead>
    <tbody>
    <%
				for (Evento evento : listare) {
					contadorEventosPedente++;
			
			
					
			%>
			<% id_evento = evento.getId_evento(); %>
			
			 <tr>
			
                <td><%=evento.getId_evento()%></td>
                 <td onclick="location.href='resultadoevento.jsp?nome=<%=evento.getNome()%>'"> <img src="<%=evento.getImagem()%>" width="200px;"></td>
                
                <td onclick="location.href='resultadoevento.jsp?nome=<%=evento.getNome()%>'"><%=evento.getNome()%></td>
                <td><%=evento.getLocal() %></td>
                <td class="text-center" onclick="location.href='resultadoevento.jsp?nome=<%=evento.getNome()%>'"> <%=evento.getEndereco().getEndereco() %> 
<!--                 </a>  -->
                </td>
                
                <td class="text-center">
<!--                 <a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a> -->
                  <input type="submit" class="btn btn-primary " aling="center" onclick="location.href='alterarevento.jsp?id_evento=<%=evento.getId_evento()%>'" value="Alterar"><br>
                
                </td>
     <td>               <button onclick="location.href='resultadoevento.jsp?nome=<%=evento.getNome()%>'" type="button" class="btn btn-info" ><i class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="top" title="Mais informaçoes sobre o estabelecimento""> Info</i></button></td> 
                </td>
            </tr>
            
            
            
            
			
			<% } 
    %>
    </tbody>
   <caption>Eventos em fase de avaliação</caption>
    </table>
    
    <%
    }%>
    
      
      
      </div> <!-- LISTANDO PEDENTES -->
      <div class="panel-footer">Eventos Pedentes de Avaliação : <strong> <%= contadorEventosPedente %> </strong></div>
    </div>
  </div>
</div>

</div> <!-- FIM CONTEUDO -->


		  
        </div> 
        
        
        
        

      </div>
    </div>
    
    </div>
            
    
	  
	  	
	  
	  
	  
	  </div>
    </div>

       </div>
</div>
   

  
	
    </div> <!--fim main -->
	             	   


	
	<div id="footer" class="">
		   	<hr class="colorgraph" >

	</div>
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

	
	


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
<%} %>
