<%@page import="Servlet.Perfil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.FuncDao"%>
<%@page import="Controller.FuncController"%>
<%@page import="Bean.Funcionario"%>
<%@page import="Model.CursoDao"%>
<%@ include file="navBar.jsp" %>
<style>
body {
  background: #fff;
  color: #666666;
  font-family: 'RobotoDraft', 'Roboto', sans-serif;
  font-size: 14px;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

/* Form Module */
.form-module {
  position: relative;
  background: #ffffff;
  max-width: 500px;
  width: 100%;
  margin: 0 auto;
}

.form-module .toggle .tooltip {
  position: absolute;
  top: 5px;
  right: -65px;
  display: block;
  background: rgba(0, 0, 0, 0.6);
  width: auto;
  padding: 5px;
  font-size: 10px;
  line-height: 1;
  text-transform: uppercase;
}
.form-module .toggle .tooltip:before {
  content: '';
  position: absolute;
  top: 5px;
  left: -5px;
  display: block;
  border-top: 5px solid transparent;
  border-bottom: 5px solid transparent;
  border-right: 5px solid rgba(0, 0, 0, 0.6);
}
.form-module .form {
  display: none;
  padding: 40px;
}
.form-module .form:nth-child(2) {
  display: block;
}
.form-module h2 {
  margin: 0 0 20px;
  color: #33b5e5;
  font-size: 18px;
  font-weight: 400;
  line-height: 1;
}
.form-module input {
  outline: none;
  display: block;
  width: 100%;
  border: 1px solid #d9d9d9;
  margin: 0 0 20px;
  padding: 10px 15px;
  box-sizing: border-box;
  font-wieght: 400;
  -webkit-transition: 0.3s ease;
  transition: 0.3s ease;
}
.form-module input:focus {
  border: 1px solid #33b5e5;
  color: #333333;
}
.form-module button {
  cursor: pointer;
  background: #33b5e5;
  width: 100%;
  border: 0;
  padding: 10px 15px;
  color: #ffffff;
  -webkit-transition: 0.3s ease;
  transition: 0.3s ease;
}
.form-module button:hover {
  background: #178ab4;
}
.form-module .cta {
  background: #f2f2f2;
  width: 100%;
  padding: 15px 40px;
  box-sizing: border-box;
  color: #666666;
  font-size: 12px;
  text-align: center;
}
.form-module .cta a {
  color: #333333;
  text-decoration: none;
}
</style>

<div id="container">
	<div id="container-perfil">
		<div class="module form-module">
  		<div class="toggle">
  		</div>

  	<div class="form">
    	<img src="imgs/logo.png" width="110%" height="auto">
    	</br></br></br>
    	<h3>${mensagem}</h3>
		
		
	<% 
		int i=0;
		Funcionario sessao = new Funcionario();
		FuncController fCon = new FuncController();
		sessao= fCon.session(username, senha);
		//if(sessao.getNome_func()!=null){
	%>
	<form method="post" action="Perfil">
		<center><label><strong><% out.println(sessao.getNome_func()); %></strong></label></center>
		<br />
      <input type="text" placeholder="Nome de Usuário" value="<% out.println(sessao.getNome_user()); %>" disabled="disabled"/>
      <input type="text" placeholder="Registro" value="<% out.println(sessao.getRe_func());%>" disabled="disabled"/>
	  <input type="password" placeholder="Senha" name="senha1" id="senha1" required="true"/>
      <input type="password" placeholder="Repita a Senha" name="senha2" id="senha2" required="true"/>
      <input type="email" placeholder="E-Mail" value="<% out.println(sessao.getEmail_func());%>" name="email" id="email"/>
      <input type="text" placeholder="Função" value="<% out.println(sessao.getFuncao_func());%>" disabled="disabled" required="true"/>
      <input type="hidden" name="id_usuario" id="id_usuario" value=<%out.println(id_usuario);%>>
      <button type="submit">Alterar</button>
    </form>
  <%
		//}
		
  %>
  </div>
</div>
</div>
</div>
<%@ include file="footer.jsp" %>