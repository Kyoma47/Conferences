package Metier;
import java.util.ArrayList;

import java.util.Date;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="Conferences")
public class Conference {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idConference;
	private String titre;
	private String sousTitre;
	private String mainImage;
	private Date dateDebut;
	private Date dateFin;
	private String lieu; 
	private String lienVideo;
	private String galerie;
	private String description;
	private int prixStandard;
	private int prixPro;
	private int prixPremium;
	
	@OneToOne(mappedBy = "Conference", cascade = CascadeType.ALL)
	private Programme Program;
	
	//Animateurs : ManyToMany
	public Conference() {
	}

	public Conference(String titre, String sousTitre, String mainImage, Date dateDebut, Date dateFin, String lieu,
			String lienVideo, String galerie, String description, int prixStandard, int prixPro, int prixPremium,
			Programme program) {
		this.titre = titre;
		this.sousTitre = sousTitre;
		this.mainImage = mainImage;
		this.dateDebut = dateDebut;
		this.dateFin = dateFin;
		this.lieu = lieu;
		this.lienVideo = lienVideo;
		this.galerie = galerie;
		this.description = description;
		this.prixStandard = prixStandard;
		this.prixPro = prixPro;
		this.prixPremium = prixPremium;
		Program = program;
	}

	public int getIdConference() {
		return idConference;
	}

	public void setIdConference(int idConference) {
		this.idConference = idConference;
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	public String getSousTitre() {
		return sousTitre;
	}

	public void setSousTitre(String sousTitre) {
		this.sousTitre = sousTitre;
	}

	public String getMainImage() {
		return mainImage;
	}

	public void setMainImage(String mainImage) {
		this.mainImage = mainImage;
	}

	public Date getDateDebut() {
		return dateDebut;
	}

	public void setDateDebut(Date dateDebut) {
		this.dateDebut = dateDebut;
	}

	public Date getDateFin() {
		return dateFin;
	}

	public void setDateFin(Date dateFin) {
		this.dateFin = dateFin;
	}

	public String getLieu() {
		return lieu;
	}

	public void setLieu(String lieu) {
		this.lieu = lieu;
	}

	public String getLienVideo() {
		return lienVideo;
	}

	public void setLienVideo(String lienVideo) {
		this.lienVideo = lienVideo;
	}

	public String getGalerie() {
		return galerie;
	}

	public void setGalerie(String galerie) {
		this.galerie = galerie;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPrixStandard() {
		return prixStandard;
	}

	public void setPrixStandard(int prixStandard) {
		this.prixStandard = prixStandard;
	}

	public int getPrixPro() {
		return prixPro;
	}

	public void setPrixPro(int prixPro) {
		this.prixPro = prixPro;
	}

	public int getPrixPremium() {
		return prixPremium;
	}

	public void setPrixPremium(int prixPremium) {
		this.prixPremium = prixPremium;
	}

	public Programme getProgram() {
		return Program;
	}

	public void setProgram(Programme program) {
		Program = program;
	}

}
