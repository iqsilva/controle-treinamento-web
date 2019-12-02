<%@page import="java.util.*"%>
<%@page import="Bean.Funcionario"%>
<%@page import="Model.FuncDao"%>
<%@page import="Service.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
	String usuario,senha;
	String id="";
	
	DBConnect conn = new DBConnect();
	usuario=request.getParameter("txt_usuario");
	senha=request.getParameter("txt_senha");
	
	FuncDao funcionario = new FuncDao();
	Funcionario f = new Funcionario();
	Funcionario func = new Funcionario();	
	
	if(funcionario.login(usuario, senha)==1){
		id = Integer.toString(funcionario.returnId(usuario, senha));
		
		session.setAttribute("usuario", usuario);
		session.setAttribute("senha", senha);
		session.setAttribute("id", id);
		
		func.setCod_user(Integer.parseInt(id));
		func.setNome_user(usuario);
		func.setSenha_user(senha);

		response.sendRedirect("portal.jsp");
	}else{
		response.sendRedirect("login.jsp");
	}
%>