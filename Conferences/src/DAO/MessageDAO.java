package DAO;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import Metier.Message;

public class MessageDAO implements DAO<Message>{
	//Attributs
		EntityManagerFactory entityManagerFactory;
		EntityManager entityManager;
		
	//Constructeur
	public MessageDAO() {	
		entityManagerFactory = Persistence.createEntityManagerFactory("GC");
		entityManager =  entityManagerFactory.createEntityManager();	
	}
	//M�thodes
	public void Create(Message m) {
		EntityTransaction transaction=entityManager.getTransaction();
		transaction.begin();
		try {
			entityManager.persist(m);
			transaction.commit();
		}catch(Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
	}

	
	public void Update(Message obj) {}

	
	public void Delete(int id) {}

}
