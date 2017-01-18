<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Teste Envio de Email</title>
</head>
<body>

<form action="/ToAqui/EnvioEmailServlet" method="post">
  <label class="col-md-4 control-label" for="endereco">E-mail:</label>  
  <input  name="email" type="email" placeholder="Enderaco de email">
  <input class="btn btn-danger" type="submit"   value="ENVIAR">  
   <button id="enviar" name="enviar" class="btn btn-primary">ENVIAR</button>
</form>
</body>
</html>