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
          Estabelecimentos</a>
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
											<th>Categoria</th>
											<th>Img</th>
											<th> + Infor </th>
											<th>Disponibilidade </th>
											<th>Usuario</th>
											<th>Remover</th>
										  
											
                                        </tr>
                                    </thead>
                                    <tbody>
									<%
		ArrayList<Estabelecimento> listar = fachada.estabelecimentoListarTodos();

			for(Estabelecimento estab : listar){
			contadorUser++;
%>
									
                                        <tr class="odd gradeX">
                                            <td><%=estab.getId_estabelecimento()%></td>
											<td><%=estab.getNome() %></td>
                                            <td><%=estab.getCategoria() %></td>
                                            <td><img src="../../<%=estab.getImagem() %>" style="max-height: 100px; max-width: 100px;"></td>
                                            
                                            <td>             <button onclick="location.href='../../resultadobuscaestabelecimento.jsp?nome=<%=estab.getNome()%>'" type="button" class="btn btn-info"><i class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="top" title="Mais informaçoes sobre o estabelecimento""></i> + Info</button>
 </td>
                                            <td>       
                                            <% 
                                            if(fachada.estabelecimentoChecarDisponivel(estab.getNome()) == false){
                                            %>
                                            <button onclick="location.href='../../AlterarDisponibilidadeEstab?id_estabelecimento=<%=estab.getId_estabelecimento()%>'" type="button" class="btn btn-primary"><i class="glyphicon glyphicon-ok" data-toggle="tooltip" data-placement="top" title="Liberar Anuncio""></i> Aprovar ?</button>
                                            <%}else if(fachada.estabelecimentoChecarDisponivel(estab.getNome()) == true){ 
                                            %>
                                            	<button type="button" class="btn btn-success"><i class="fa fa-check-square-o fa-1x"></i> Aprovado</button>
                                            <% }%>
                                          
                                            </td>
                                        	<td><%=estab.getUser().getNome()%> </td>
                                        	<td>
                                        	 <input type="button" class="btn btn-info btn-xs" aling="center" onclick="location.href='../../RemoverEstabelecimentoServlet?id_estabelecimento=<%=estab.getId_estabelecimento()%>'" value="REMOVER">
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
        <div class="panel-footer">total estabelecimentos : <%=contadorUser %></div>
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