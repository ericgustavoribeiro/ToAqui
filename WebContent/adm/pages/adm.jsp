<%@page import="com.ejt.adm.Adm"%>
<%@page import="com.ejt.estabelecimento.Estabelecimento"%>
<%@page import="com.ejt.usuario.Usuario"%>
<%@ page import="com.ejt.fachada.Fachada"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%

	int contUser = 0;
	int contEsta = 0;
	HttpSession sessionLoginAdm = request.getSession();
	Adm adm = (Adm)sessionLoginAdm.getAttribute("AdmLogado");
	
	
	
		
		
		Fachada fachada = Fachada.getInstance();
		
		
		if(sessionLoginAdm.getAttribute("AdmLogado") == null){
			response.sendRedirect("login.jsp");
		}else{
%>
<!DOCTYPE html>


<html lang="pt">
<head>

      <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
    <title>Portal To Aqui - ADM</title>

    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="../dist/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="../bower_components/morrisjs/morris.css" rel="stylesheet">
  <link href="../../css/datavisao2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
               
              
                
                
                <nav class="navbar navbar-findcond navbar-fixed-top">
    <div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Findcond</a>
		</div>
		<div class="collapse navbar-collapse" id="navbar">
			<ul class="nav navbar-nav navbar-right">
	
				<li class="active"><a href="#"><%=adm.getNome()%> <span class="sr-only">(current)</span></a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Admin <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="../../index.jsp">Pagina Home</a></li>
						<li class="divider"></li>
						
						<li><a href="../../sair.jsp">Sair</a></li>
					</ul>
				</li>
			</ul>
			
		</div>
	</div>
</nav>
                
            </div>
            
            <!-- /.navbar-header -->

         

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="adm.jsp"><i class="fa fa-dashboard fa-fw"></i> Dados do Portal</a>
                 
                        </li>
                        <li>
                            <a href="estabelecimentos.jsp"><i class="fa fa-table fa-fw"></i> Estabelecimentos </a>
                        </li>
                        <li>
                            <a href="usuarios.jsp"><i class="glyphicon glyphicon-user"></i> Usuarios </a>
                        </li>
                         <li>
                            <a href="eventos.jsp"><i class="glyphicon glyphicon-music"></i> Eventos </a>
                        </li>

                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Dados</h1>
 <div class="row">
  <div class="col-sm-4">
  
  <section id="labels">
  <div class="container">
	<div class="row">
	
        <div class="col-sm-6 col-md-3">
          <div class="ao">
            <div class="ao-date">
               <a href="usuarios.jsp"> <span class="changeby"><span class="fa fa-user fa-2x"></span>  Usuarios</a></span>
                
            </div>
            
            <div class="ao-volume">
          
           <%
  		ArrayList<Usuario> listar = fachada.usuarioListar();

			for(Usuario user : listar){
			contUser++;
			}
%> 
          
          
               Quant: <%=contUser %>   
            </div>
          </div>
        </div>
	</div>
  </div>
</section>
 
  
  
  
  </div>
  <div class="col-sm-4">
  
  
  <section id="labels">
  <div class="container">
	<div class="row">
	
        <div class="col-sm-6 col-md-3">
          <div class="ao">
            <div class="ao-date">
               <a href="estabelecimentos.jsp"> <span class="changeby"><span class="fa fa-list fa-2x"></span> Estabelecimentos</a></span>
                
            </div>
            
            <div class="ao-volume">
          
 									<%
		ArrayList<Estabelecimento> listars = fachada.estabelecimentoListarTodos();

			for(Estabelecimento estab : listars){
			contEsta++; }
%>
		
          
          
            Quant : <%=contEsta %>
            </div>
          </div>
        </div>
	</div>
  </div>
</section>
 
  
  
  
  </div>
  <div class="col-sm-4">
  
  
  
  
  <section id="labels">
  <div class="container">
	<div class="row">
	
        <div class="col-sm-6 col-md-3">
          <div class="ao">
            <div class="ao-date">
               <a href="eventos.jsp"> <span class="changeby"><span class="fa fa-music fa-2x"></span> Eventos</a></span>
                
            </div>
            
            <div class="ao-volume">
          
 									<%

 									//FAZER O LISTAR EVENTOS AQUI
 									ArrayList<Estabelecimento> listarss = fachada.estabelecimentoListarTodos();

 									
 									
			for(Estabelecimento estab : listarss){
			contEsta++; }
%>
		
          
          
            Quant : <%=contEsta %>
            </div>
          </div>
        </div>
	</div>
  </div>
</section>
 
  
  
  
  
  
  
  
  
  </div>
</div>
                    
                </div>
                <!-- /.col-lg-12 -->
            </div>
            
            
            
            <!-- /.row -->
</div>



</div>


    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="../bower_components/raphael/raphael-min.js"></script>
    <script src="../bower_components/morrisjs/morris.min.js"></script>
    <script src="../js/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

</body>

</html>
<%}%>