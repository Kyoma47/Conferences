package DAO;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import Metier.Conference;

public class ConferenceDAO implements DAO<Conference>{
	//Attributs
	EntityManagerFactory entityManagerFactory;
	EntityManager entityManager;
	
	//Constructeur
	public ConferenceDAO() {	
		entityManagerFactory = Persistence.createEntityManagerFactory("GC");
		entityManager =  entityManagerFactory.createEntityManager();	
	}
	//M�thodes
	public void Research() throws SQLException{
		ModeleConference.getListeConferences().clear();
		Query requete;
		requete = entityManager.createQuery("SELECT c FROM Conference c ORDER BY c.id DESC").setMaxResults(5);
		ModeleConference.setListeConferences((ArrayList<Conference>) requete.getResultList());
		if(ModeleConference.getKeyWord()!="") {
			requete = entityManager.createQuery("SELECT c FROM Conference c WHERE c.titre like :x or c.sousTitre like :x ORDER BY c.id DESC");
			requete.setParameter("x","%" + ModeleConference.getKeyWord() + "%");
			ModeleConference.setRechercheListeConferences((ArrayList<Conference>) requete.getResultList());
		}
		
	}
	
	public void Research(int id) {
		ModeleConference.getListeConferences().clear();
		ModeleConference.getListeConferences().add(entityManager.find(Conference.class, id));
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

