package Metier;
import java.io.File;
import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import DAO.ConferenceDAO;
import DAO.ModeleConference;

public class Test {
	
	public static void main(String[] args) {
		
		/*EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("PU");
		EntityManager entityManager=entityManagerFactory.createEntityManager();
		EntityTransaction transaction=entityManager.getTransaction();*/
		
		/*Date unedate = new Date();
		ConferenceDAO c=new ConferenceDAO();
		Conference c1 = new Conference("Conference","sous titre","image",unedate, unedate,"un lieu","un lien video","une galerie","une description",30,50,100,null);
		c.Create(c1);
		
		Programme p=new Programme();
		transaction.begin();
		try {
			//Conference c=entityManager.find(Conference.class,1);
			p.setConference(c1);
			c1.setProgram(p);
			entityManager.persist(p);
			
		transaction.commit();
		}catch(Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
		
		Session s = new Session(unedate);*/
		//c1.setProgram(p);
		//c.Create(c1);
		//p.setConference(c1);
		//s.setProgram(p);
		//p.getSessions().add(s);
		
		
		
		//Premiere creation : persister avec conferences.
		//Sinon modifier avec crud 
		
		/*transaction.begin();
		try {
			Programme p=entityManager.find(Programme.class,1);
			entityManager.remove(p);
	
			transaction.commit();
		}catch(Exception e) {
			
			transaction.rollback();
			e.printStackTrace();
		}
		*/
		new File("E:\\S4\\TestCreation").mkdir();
		/*c.Research("");
		Conference c2 =ModeleConference.getListeConferences().get(0);*/
		//System.out.println("Id :           -----"+c1.getProgram().getIdProgramme());
		//c1.getProgram().getSessions().get(0).getDateSession()%*/
	}
}
