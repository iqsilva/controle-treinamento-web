<%@page import="Controller.ParticipaController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="navBar.jsp" %>
<link rel="stylesheet" type="text/css" href="estilos/estilo.css"> 
<center><div id="container_espera" style="margin-top:5%; width:70%;">
<%
	int id_espera = 0;
	String nome = "";
	id_espera = Integer.parseInt(id_usuario);
	ParticipaController pc = new ParticipaController();
	if(pc.achaEspera("E", id_espera).size() == 0){
%>
	<div id="erro" style="margin:0 auto; width:70%;">	
		<img src="imgs/erroCurso.png" width="30%">
		<br><br><br><h2 style='color: #ff0000; text-align:center'>Você não solicitou nenhum curso!</h2>
		<br><br><center><a href='portal.jsp'><button type='button' class='btn btn-danger btn-lg'>Solicitar cursos</button></a></center>
	</div>
<%
	}else{
		out.println("<h4 style = 'text-align:center;'>Cursos em espera para aprovação</h4>");
		nome = pc.achaEspera("E", id_espera).get(0).getNome_func();
		for(int i = 0; i< pc.achaEspera("E", id_espera).size();i++){
%>
			<div class="well" align="center" id="div_cursos">
				<table style="width:100%;" id = "tableData">
					<tr>
		    			<td>Nome do Funcionário</td>
		    			<td>Curso</td> 
		    			<td>Data de Início</td>	
		  			</tr>
		  			<tr>
		  				<td><% out.println(nome); %></td>
		  				<td><% out.println(pc.achaEspera("E", id_espera).get(i).getDescricao_curso());%></td>
		  				<td><% out.println(pc.achaEspera("E", id_espera).get(i).getData_inicio());%></td>
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