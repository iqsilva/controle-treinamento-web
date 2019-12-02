package Servlet;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import Bean.Funcionario;
import Model.FuncDao;

@WebServlet("/Perfil")
public class Perfil extends HttpServlet {
	HttpSession session;
	private static final long serialVersionUID = 1L;
	Funcionario func = new Funcionario();
    public Perfil() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String senha1 = request.getParameter("senha1");
		String senha2 = request.getParameter("senha2");
		String email = request.getParameter("email");
		String id = request.getParameter("id_usuario");
		PrintWriter html = response.getWriter();
		int id_usuario = 0;
		try{
			 id_usuario=Integer.parseInt(id);
		}catch(NumberFormatException nfe){
			System.out.println(nfe);
		}
		if(senha1.equals(senha2)){
			FuncDao fd = new FuncDao();
			Funcionario f = new Funcionario();
			f.setCod_user(id_usuario);
			f.setSenha_user(senha1);
			f.setEmail_func(email);
			fd.update2(f);
			
			html.println("<script>alert('Dados alterados com sucesso! Faça o login novamente');document.location.href='login.jsp';</script>");
			
		}else{
			response.sendRedirect("perfil.jsp");
		}
	}
	public Funcionario session(String nome_user,String senha_user){
		FuncDao fd = new FuncDao();
		func=fd.session(nome_user, senha_user);
		return func;
	}
}