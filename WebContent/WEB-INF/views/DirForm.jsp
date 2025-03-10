<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%-- 2(a). Importa los CSS y JS de Twitter Bootstrap --%>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	<title>Administrador de Archivos</title>
</head>
<body>
	<div class="container">
		<h2>Administrador de Archivos</h2>
		<p>
			Por favor, ingresa el path <b>completo</b> para listar su contenido:
		</p>
		<%-- Form para iniciar el listado de elementos en un directorio --%>
			<form id="form-saludo" method="post" action="Lista.do" 
			role="form" data-toggle="validator">
				<div class="form-group">
					<label for="path" class="control-label">Path</label>
					<%--
						5(a) Validación con Bootstrap 
						para hacerlo requerido 
					--%>
					<input type="text" name="path" id="path" 
					 placeholder="/Users/jm/Documents" 
					 class="form-control" />
				 </div>
				 <div class="form-group">
				 	<%--
				 	    5(b) Crear un botón de tipo submit 
				 	    con Bootstrap que tenga el texto "Listar"
				 		y el ícono glyphicon-search
				 	--%>
				 	<%-- Escribe tu código aquí --%>
				 </div>
				<%-- Muestra los errores encapsulados
					 como atributos en request. --%>
				<div class="form-group">
					<c:if test="${fn:length(requestScope.errores) gt 0}">
					<div class=" alert alert-danger">
						<%-- 5(c) Imprime los errores 
							 guardados en el atributo
						     errores de la request --%>
						<c:forEach>
							${error}
						</c:forEach>
					</div>
					</c:if>
				</div>
			</form>
	</div>
</body>
</html>
