package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Participa;
import Model.ParticipaDao;
@WebServlet("/addParticipa")
public class addParticipa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public addParticipa() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String id_user=request.getParameter("id_user");
		String id_curso=request.getParameter("id_curso");
		String id_edicao=request.getParameter("id_edicao");
		int idCurso = Integer.parseInt(id_curso);
		int idUser = Integer.parseInt(id_user);
		int idEdicao = Integer.parseInt(id_edicao);
		int result = 0;
		Participa part = new Participa();
		part.setCod_curso(idCurso);
		part.setCod_edicao(idEdicao);
		part.setCod_func(idUser);
		ParticipaDao pd = new ParticipaDao();
		result = pd.save(part, idCurso);
		if(result == 1){
			response.sendRedirect("espera.jsp");
		}else{
			response.sendRedirect("portal.jsp?status=error");
		}
		
	}
}