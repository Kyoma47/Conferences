 package DAO;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import Metier.Conference;
import Metier.Programme;
import Metier.Session;

public class ProgrammeDAO implements DAO<Programme>{
	
	private EntityManager entityManager;
	
	public ProgrammeDAO() {
		EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("PU");
		entityManager=entityManagerFactory.createEntityManager();
	}
	
	public void Create(Programme p, List<Session> liste ,int idConference) {
		EntityTransaction transaction=entityManager.getTransaction();
		transaction.begin();
		try {
			Conference c = entityManager.find(Conference.class,idConference);
			p.setConference(c);
			c.setProgram(p);
			p.setSessions(liste);
			entityManager.persist(p);
		transaction.commit();
		}catch(Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
	}

	
	public void Update(Programme p){
		EntityTransaction transaction=entityManager.getTransaction();
		transaction.begin();
		try {
			entityManager.merge(p);
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
			Programme p=entityManager.find(Programme.class,id);
			entityManager.remove(p);
			transaction.commit();
		}catch(Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
	}

	@Override
	public void Create(Programme obj) {
		// TODO Auto-generated method stub
		
	}
}
