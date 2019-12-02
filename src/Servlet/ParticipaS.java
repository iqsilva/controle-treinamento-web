package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Participa
 */
@WebServlet("/Participa")
public class ParticipaS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ParticipaS() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		int id = Integer.parseInt(request.getParameter("id_curso"));
		String desc = request.getParameter("desc_curso");
		System.out.println(id);
		response.sendRedirect("portal.jsp?Cursoid="+id+"&DescCurso="+desc);
	}
}



/*
onclick = "myFunction('<%= c.findCurso().get(i).getDesc_curso().toString()%>', '<%=c.findCurso().get(i).getCod_curso() %>')"


<script>
var id_cursos;
function myFunction(desc,id) {
	document.getElementById("modal_title").innerHTML = desc+"     "+id;
	$('#myModal').modal({
        show: true, 
        keyboard: true
     })
     id_cursos = id;
}
function getId(){
	return id_cursos;
}
</script>


onclick = "<% id= c.findCurso().get(i).getCod_curso(); desc = c.findCurso().get(i).getDesc_curso();%>"

*/