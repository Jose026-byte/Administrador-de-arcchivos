package me.jmll;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SaludoServlet
 */
@WebServlet({"/Admin.do", "/AdminArchivos.do"})
public class AdminArchivos extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final static Logger LOGGER = Logger.getLogger(AdminArchivos.class.getCanonicalName());
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminArchivos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 4(a) Obten el atributo "errores" de la request 
		// y asígnalo una vez más al request
		
		LOGGER.log(Level.INFO, "Errores: {0}", new Object[] { request.getAttribute("errores") });
		// 4(b) Obtiene Requestdispatcher a DirForm.jsp
		// y reenvía con el método forward
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
