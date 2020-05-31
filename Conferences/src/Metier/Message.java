package Metier;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Message")
public class Message {
	//Attributs
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idMessage;
	private String nom;
	private String email;
	private String sujet;
	private String message;
	
	//Constructeurs
	public Message(String nom, String email, String sujet, String message) {
		super();
		this.nom = nom;
		this.email = email;
		this.sujet = sujet;
		this.message = message;
	}
	public Message(int idMessage, String nom, String email, String sujet, String message) {
		super();
		this.idMessage = idMessage;
		this.nom = nom;
		this.email = email;
		this.sujet = sujet;
		this.message = message;
	}

	//Getters & Setters
	public int getIdMessage() {
		return idMessage;
	}

	public void setIdMessage(int idMessage) {
		this.idMessage = idMessage;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSujet() {
		return sujet;
	}

	public void setSujet(String sujet) {
		this.sujet = sujet;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
