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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BUSCAR </title>
</head>
<body>
	<h1>ESTABELECIMENTOS</h1>

	<div class="container-fluid" style="">
		<!-- div fundo listar -->
		<div class="container" style="">
			<!--  COLOCAR LISTAR  -->
			<hr>

			<div class="row">

				<%
					ArrayList<Estabelecimento> listar = fachada.estabelecimentoListarBuscaNome(nome);

					if(listar.size()==0){%>
						<h1>OPS ! NENHUM ESTABELECIMENTO ENCONTRADO</h1>
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



			<h1>EVENTOS</h1>






			<div class="container-fluid" style="">
				<!-- div fundo listar -->
				<div class="container" style="">
					<!--  COLOCAR LISTAR  -->
					<hr>

					<div class="row">

						<%
							ArrayList<Evento> lista = fachada.eventoListarBuscaNome(nome);
						if(listar.size()==0){%>
						<h1>OPS ! NENHUM EVENTO ENCONTRADO</h1>
					<% }else{	
						for (Evento evento : lista) {
						%>
						<%
							String data = evento.getData_evento();
								String dat[] = new String[3];
								dat = data.split("-");

								String valori = String.valueOf(evento.getValor_ingresso());
								valori = valori.replace(".", ",0");
						%>

						<div class="col-md-4">


							<div id="gallery">

								<ul>
									<li>
										<p>

											<a href="<%=evento.getImagem()%>" rel="lightbox"
												title="<%=evento.getNome().toUpperCase()%>"
												class="thumbnail"> <strong> <%=evento.getNome().toUpperCase()%>
													<br>
											</strong> <img style="max-width: 200px; min-width: 200px;"
												src="<%=evento.getImagem()%>" height="350" alt=""
												title="Img#1" />




											</a>

											<button
												onclick="location.href='resultadoevento2.jsp?nome=<%=evento.getNome()%>'"
												type="button" class="btn btn-info"
												style="margin-top: -20%; margin-left: 85%;">
												<i class="glyphicon glyphicon-info-sign"
													data-toggle="tooltip" data-placement="top"
													title="Mais informa�oes sobre o estabelecimento""> Info</i>
											</button>
									</li>
								</ul>

								</li>
								</ul>

							</div>



						</div>




						<% } 
						}%>
						
						<!-- fim do for listar -->


					</div>
</body>
</html>
