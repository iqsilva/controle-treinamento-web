<%@page import="Controller.ParticipaController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="navBar.jsp" %>
<link rel="stylesheet" type="text/css" href="estilos/estilo.css"> 
<center><div id="container_cursando" style="margin-top:5%; width:70%;">
<%
	int id_cursando = 0;
	String nome = "";
	id_cursando = Integer.parseInt(id_usuario);
	ParticipaController pc = new ParticipaController();
	if(pc.achaAprovado("A", id_cursando).size() == 0){
%>
	<div id="erro" style="margin:0 auto; width:70%;">	
		<img src="imgs/erroCurso.png" width="30%">
		<br><br><br><h2 style='color: #ff0000; text-align:center'>Você não está cursando nenhum curso</h2>
		<br><br><center><a href='portal.jsp'><button type='button' class='btn btn-danger btn-lg'>Solicitar cursos</button></a></center>
	</div>
<% 
	}else{
		out.println("<h4 style = 'text-align:center;'>Cursos em andamento</h4>");
		
		for(int i = 0; i< pc.achaAprovado("A", id_cursando).size();i++){
%>
			<br>
			<div class="well" align="center" id="div_cursos">
				<table style="width:100%;" id = "tableData">
					<tr>
		    			<td>Curso</td>
		    			<td>Início</td> 
		    			<td>Término</td>
		    			<td>Validade</td>	
		  			</tr>
		  			<tr>
		  				<td><% out.println(pc.achaAprovado("A", id_cursando).get(i).getDescricao_curso());%></td>
		  				<td><% out.println(pc.achaAprovado("A", id_cursando).get(i).getData_inicio());%></td>
		  				<td><% out.println(pc.achaAprovado("A", id_cursando).get(i).getData_fim());%></td>
						<td><% out.println(pc.achaAprovado("A", id_cursando).get(i).getValidade());%></td>
					</tr>
				</table>
			</div>
			<br />
			<br />		
<%
		}
	}
%>
</div></center>
<%@include file="footer.jsp" %>