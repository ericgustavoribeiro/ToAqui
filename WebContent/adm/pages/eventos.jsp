<%@page import="com.ejt.evento.Evento"%>
<%@page import="com.ejt.adm.Adm"%>
<%@page import="com.ejt.estabelecimento.Estabelecimento"%>
<%@page import="com.ejt.usuario.Usuario"%>
<%@ page import="com.ejt.fachada.Fachada"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
HttpSession sessionLoginAdm = request.getSession();
Adm adm = (Adm)sessionLoginAdm.getAttribute("AdmLogado");


	
	
	Fachada fachada = Fachada.getInstance();
	
	
	int contadorUser = 0;

	if(sessionLoginAdm.getAttribute("AdmLogado") == null){
		response.sendRedirect("login.jsp");
	}else{


%><!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="../bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

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
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="adm.html">Portal Tô Aqui! - ADMINSTRAÇÃO</a>
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
                    <h1 class="page-header">Dados do Portal</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
            
      <!-- USUARIOS -->
  <div class="panel-group">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#collapse1"><i class="fa fa-compress"></i>
          Eventos</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body"><!-- Panel Body -->
        
        
                    
            <div class="row"> <!-- row -->
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Estabelecimentos Cadastrado no Portal!
                        </div>
                        <!-- /.panel-heading --> <!--colocar estabelecimentos -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
									<thead>
                                        <tr>
                                            <th>Id</th>
											<th>Nome</th>
											<th>Local</th>
											<th>Img</th>
											<th> + Infor </th>
											<th>Disponibilidade </th>
											<th>Usuario</th>
										  	<th>Remover</th>	
                                        </tr>
                                    </thead>
                                    <tbody>
									<%
		ArrayList<Evento> listar = fachada.eventoListarTodos();

			for(Evento evento : listar){
			contadorUser++;
%>
									
                                        <tr class="odd gradeX">
                                            <td><%=evento.getId_evento()%></td>
											<td><%=evento.getNome()%></td>
                                            <td><%=evento.getLocal() %></td>
                                            <td><img src="../../<%=evento.getImagem()%>" style="max-height: 100px; max-width: 100px;"></td>
                                            
                                            <td>             <button onclick="location.href='../../resultadoevento.jsp?nome=<%=evento.getNome()%>'" type="button" class="btn btn-info"><i class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="top" title="Mais informaçoes sobre o estabelecimento""></i> + Info</button>
 </td>
                                            <td>       
                                            <% 
                                            if(fachada.eventoChecarDisponivel(evento.getNome()) == false){
                                            %>
                                            <button onclick="location.href='../../AlterarDisponibilidadeEvento?id_evento=<%=evento.getId_evento()%>'" type="button" class="btn btn-primary"><i class="glyphicon glyphicon-ok" data-toggle="tooltip" data-placement="top" title="Liberar Anuncio""></i> Aprovar ?</button>
                                            <%}else if(fachada.eventoChecarDisponivel(evento.getNome()) == true){ 
                                            %>
                                            	<button type="button" class="btn btn-success"><i class="fa fa-check-square-o fa-1x"></i> Aprovado</button>
                                            <% }%>
                                          
                                            </td>
                                        	<td><%=evento.getUser().getNome()%> </td>
                                        	<td>
                                        	<input type="button" class="btn btn-info btn-xs" aling="center"  onclick="location.href='../../RemoverEventoServlet?id_evento=<%=evento.getId_evento()%>'" value="REMOVER"><br>
                                        	</td>
                                        </tr>
										    
<!-- FIM LISTAR USUARIO -->
<% }%>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div> <!-- fim row -->
        
        
        
        </div> <!-- fim Panel Body -->
        <div class="panel-footer">total estabelecimentos : <%= contadorUser %></div>
      </div>
    </div>
  </div>

            
      
      
      <!-- FIM USUARIOS -->
      
            
        

            <!-- /.row -->

            <!-- /.row -->

            <!-- /.row -->
           
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="../bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>

</body>

</html>
<%}%>