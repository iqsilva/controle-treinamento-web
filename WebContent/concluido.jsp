<%@page import="Controller.ParticipaController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="navBar.jsp" %>
<link rel="stylesheet" type="text/css" href="estilos/estilo.css"> 
<body style=" min-height: 100%;">
<center><div id="container_espera" style="margin-top:5%; width:70%;">
<%
	int id_concluido = 0;
	String nome = "";
	id_concluido = Integer.parseInt(id_usuario);
	ParticipaController pc = new ParticipaController();
	if(pc.achaConcluido("C", id_concluido).size() == 0){
%>
	<div id="erro" style="margin:0 auto; width:70%;">	
		<img src="imgs/erroCurso.png" width="70%">
		<br><br><br><h2 style='color: #ff0000; text-align:center'>Você não concluiu nenhum curso</h2>
		<br><br><center><a href='portal.jsp'><button type='button' class='btn btn-danger btn-lg'>Solicitar cursos</button></a></center>
	</div>
<% 
	}else{
	%>
		<h4 style = 'text-align:center;'>Cursos concluídos</h4><br>
	<% 
		for(int i = 0; i< pc.achaConcluido("C", id_concluido).size();i++){
%>
			<div align="center" id="div_cursos">
				<table style="width:100%;" id = "tableData">
					<tr>
		    			<td><b>Curso</b></td> 
		    			<td><b>Validade</b></td>	
		  			</tr>
		  			<tr>
		  				<td><% out.println(pc.achaConcluido("C", id_concluido).get(i).getDescricao_curso());%></td>
		  				<td><% out.println(pc.achaConcluido("C", id_concluido).get(i).getValidade());%></td>
					</tr>
				</table>
			</div>
<%
		}
	}
%>
</div></center>
</body>
<%@include file="footer.jsp" %>