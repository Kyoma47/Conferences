package DAO;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import Metier.*;


public class ConferenceDAO implements DAO<Conference>{

	private EntityManager entityManager;
	
	public ConferenceDAO() {
		EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("PU");
		entityManager=entityManagerFactory.createEntityManager();
	}
	
	public void Create(Conference c) {
		EntityTransaction transaction=entityManager.getTransaction();
		transaction.begin();
		try {
		entityManager.persist(c);
		transaction.commit();
		}catch(Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
	}
	
	
	public void Research(String keyWord){
		ModeleConference.getListeConferences().clear();
		//or c.sousTitre like :x
		Query query=entityManager.createQuery("select c from Conference c where c.titre like :x or c.sousTitre like :x");
		query.setParameter("x","%"+keyWord+"%");
		ModeleConference.setListeConferences(query.getResultList());
	}
	
	public void Research(){
		ModeleConference.getListeConferences().clear();
		Query requete;
		if(ModeleConference.getKeyWord().equals("")) {
			requete = entityManager.createQuery("SELECT c FROM Conference c ORDER BY c.id DESC").setMaxResults(5);
		}
		else {
			requete = entityManager.createQuery("SELECT c FROM Conference c WHERE titre c.like :x or c.sousTitre like :x ORDER BY c.id DESC").setMaxResults(5);
			requete.setParameter("x","%" + ModeleConference.getKeyWord() + "%");
		}
		ModeleConference.setListeConferences(requete.getResultList());
	}
	
	public void Research(int id) {
		ModeleConference.getListeConferences().clear();
		ModeleConference.getListeConferences().add(entityManager.find(Conference.class, id));
	}
	
	public void Update(Conference c){
		EntityTransaction transaction=entityManager.getTransaction();
		transaction.begin();
		try {
			entityManager.merge(c);
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
			Conference c=entityManager.find(Conference.class,id);
			entityManager.remove(c);
			transaction.commit();
		}catch(Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
	}
}
