package DAO;

import java.util.ArrayList;
import java.util.List;

import Metier.Conference;

public class ModeleConference {
	
	private static String KeyWord="";
	private static List<Conference> ListeConferences=new ArrayList<Conference>();
	private static List<Conference> RechercheListeConferences = new ArrayList<Conference>();
	
	public static String getKeyWord() {
		return KeyWord;
	}
	public static void setKeyWord(String keyWord) {
		KeyWord = keyWord;
	}
	public static List<Conference> getListeConferences() {
		return ListeConferences;
	}
	public static void setListeConferences(List<Conference> listeConferences) {
		ListeConferences = listeConferences;
	}
	public static List<Conference> getRechercheListeConferences() {
		return RechercheListeConferences;
	}
	public static void setRechercheListeConferences(List<Conference> rechercheListeConferences) {
		RechercheListeConferences = rechercheListeConferences;
	}
	
	
	
	
}
