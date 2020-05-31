package DAO;
import java.util.ArrayList;
import Metier.Conference;

public class ModeleConference {
	
	private static String KeyWord="";
	private static ArrayList<Conference> ListeConferences = new ArrayList<Conference>();
	private static ArrayList<Conference> RechercheListeConferences = new ArrayList<Conference>();
	
	public static String getKeyWord() {
		return KeyWord;
	}
	public static void setKeyWord(String keyWord) {
		ModeleConference.KeyWord = keyWord;
	}
	public static ArrayList<Conference> getListeConferences() {
		return ListeConferences;
		
	}
	public static void setListeConferences(ArrayList<Conference> ListeConferences) {
		ModeleConference.ListeConferences = ListeConferences;
	}
	public static ArrayList<Conference> getRechercheListeConferences() {
		return RechercheListeConferences;
	}
	public static void setRechercheListeConferences(ArrayList<Conference> rechercheListeConferences) {
		RechercheListeConferences = rechercheListeConferences;
	}
	
	
}