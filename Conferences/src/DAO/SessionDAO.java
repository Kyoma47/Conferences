package DAO;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import Metier.Conference;
import Metier.Programme;
import Metier.Session;

public class SessionDAO implements DAO<Session> {
	
	private EntityManager entityManager;
	
	public SessionDAO() {
		EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("PU");
		entityManager=entityManagerFactory.createEntityManager();
	}
	
	
	/*public void Create(Session s, int idProgramme) {
		EntityTransaction transaction=entityManager.getTransaction();
		transaction.begin();
		try {
			Programme p = entityManager.find(Programme.class,idProgramme);
			p.getSessions().add(s);
			entityManager.persist(s);
			
		transaction.commit();
		}catch(Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
	}*/
	
	
	/*public void Research(String keyWord){
		ModeleConference.getListeConferences().clear();
		Query query=entityManager.createQuery("select c from Sessions c where c.titre like :x or c.sousTitre like :x");
		query.setParameter("x","%"+keyWord+"%");
		ModeleConference.setListeConferences(query.getResultList());
	}*/

	
	public void Update(Session s){
		EntityTransaction transaction=entityManager.getTransaction();
		transaction.begin();
		try {
			entityManager.merge(s);
			transaction.commit();
		}catch(Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
	}
	
	public void Delete(int id) {
		EntityTransaction transaction=entityManager.getTransaction();
		transaction.begin();
		try {
			Session s=entityManager.find(Session.class,id);
			entityManager.remove(s);
			transaction.commit();
		}catch(Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
	}

}
