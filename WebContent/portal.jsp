<%@page import="Model.DateLabelFormatter"%>
<%@page import="Controller.EdicaoController"%>
<%@page import="Controller.CursoController"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.FuncDao"%>
<%@page import="Bean.Curso"%>
<%@page import="Model.CursoDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%
	CursoController c = new CursoController();
	EdicaoController e = new EdicaoController();
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="navBar.jsp" %>
<head>
<link rel="stylesheet" type="text/css" href="estilos/estilo.css"> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Portal</title>
</head>
<body onload="openModal();">
<div id="container-cursos" style=" background-color: #fff;margin-top:5%; min-height: 100%;position: relative;">
	<%
		for(int i = 0;i<c.findCurso().size();i++){
	%>
		<div class="well" align="center" id="div_cursos">
			<table style="width:100%;" id = "tableData" class="table">
				<tr>
	    			<td style="text-algin: center"><b>Nome do Curso</b></td>
	    			<td style="text-algin: center"><b>Vigência</b></td> 
	    			<td style="text-algin: center"><b>Carga Horária</b></td>	
	  				<td style="text-algin: center"><b>Clique para ver as edições</b></td>
	  			</tr>
	  			<tr>
	  				<td><% out.println(c.findCurso().get(i).getDesc_curso().toString()); %></td>
	  				<td><% out.println(Integer.toString(c.findCurso().get(i).getVigencia())); %></td>
	  				<td><% out.println(Integer.toString(c.findCurso().get(i).getCarga_horaria())); %></td>
					<td>
					<form action = "Participa" method = "post">
					<button  type="submit" class="btn btn-info btn-responsive" id="btn_go">Inscreva-se</button></td>
					<input type="hidden" id="id_curso" name="id_curso" value="<%=c.findCurso().get(i).getCod_curso() %>">
					<input type="hidden" id="desc_curso" name="desc_curso" value="<%=c.findCurso().get(i).getDesc_curso() %>">
					</form>
				</tr>
			</table>
		</div>	
	<%
		}
	%>
	<script>
	function openModal(){
		$('#myModal').modal({
	        show: true, 
	        keyboard: true
	     })	
	}

	</script>
	<%
		if(request.getQueryString()==null){
			
		}else{
			String id = request.getParameter("Cursoid").toString();
			String desc_curso = request.getParameter("DescCurso").toString();	
			int id_curso = Integer.parseInt(id);	
		
	%>
	</div>
	<!-- Modal -->
		<div id="myModal" class="modal fade" role="dialog">
		  <div class="modal-dialog" style="margin-top:10%;">
		    <!-- Modal content-->
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		        <h4 class="modal-title" id="modal_title"><%out.println(desc_curso);%></h4>
		      </div>
		      <div class="modal-body">
		        <% 
		        	if(e.findEdicao(id_curso).size()==0){
		        %>
		        <img src="imgs/erroEdicoes.png" width="100%">
		        <% 
		        	}else{
		        		for(int j = 0;j<e.findEdicao(id_curso).size();j++){
		        		
		        %>
		        <p><h4 style="text-align:center;">Edições</h4></p>
		        <table style="width:100%;" id = "tableData" class="table">
					<tr>
			    		<td>Início</td>
			    		<td>Término</td> 
			    		<td>Validade</td>	
			    		<td></td>
			  		</tr>
			  		<tr>
			  			<td><%out.println(e.findEdicao(id_curso).get(j).getData_Inicio()); %></td>
			  			<td><%out.println(e.findEdicao(id_curso).get(j).getData_Fim()); %></td>
			  			<td><%out.println(e.findEdicao(id_curso).get(j).getValidade()); %></td>			  		  				
						<td>
						<form method="post" action="addParticipa">
							<button  type="submit" class="btn btn-success" id="btn_go">Participar</button>
							<input type ="hidden" id="id_curso" name="id_curso" value="<%=id_curso%>">
							<input type ="hidden" id="id_user" name="id_user" value="<%=id_usuario %>" >
							<input type ="hidden" id="id_edicao" name="id_edicao" value="<%=e.findEdicao(id_curso).get(j).getCod_Edicao() %>" >
						</form>
						</td>
					</tr>
				</table>
				<%		} 
		        	}
				}%>
		      </div>
		    </div>
		  </div>
		</div>
		<%@include file="footer.jsp" %>
