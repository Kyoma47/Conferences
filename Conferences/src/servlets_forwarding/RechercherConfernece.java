package servlets_forwarding;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ConferenceDAO;
import DAO.ModeleConference;

@WebServlet("/RechercherConfernece")
public class RechercherConfernece extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RechercherConfernece() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ModeleConference.setKeyWord(request.getParameter("Keyword"));
		if(ModeleConference.getKeyWord().contentEquals("")) {
			ModeleConference.getRechercheListeConferences().clear();
		}
		else {
			ConferenceDAO dao = new ConferenceDAO();
			try {
				dao.Research();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			ModeleConference.setKeyWord("");
		}
		this.getServletContext().getRequestDispatcher("/WEB-INF/accueil.jsp").forward(request, response);
	}

}
