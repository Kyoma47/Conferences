package servlets_forwarding;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MessageDAO;
import Metier.Message;

@WebServlet("/SauvegarderMessage")
public class SauvegarderMessage extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SauvegarderMessage() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nom = request.getParameter("nom");
		String email = request.getParameter("email");
		String sujet = request.getParameter("sujet");
		String message = request.getParameter("message");
		
		Message msg = new Message(nom, email, sujet, message);
		MessageDAO dao = new MessageDAO();
		dao.Create(msg);
		this.getServletContext().getRequestDispatcher("/WEB-INF/accueil.jsp").forward(request, response);
	}

}
