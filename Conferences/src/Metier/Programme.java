package Metier;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="Programmes")

public class Programme {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idProgramme;
	
	//Liste des sessions ;
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "conference_id")
	private Conference Conference;
	
	@OneToMany(mappedBy="program",cascade=CascadeType.ALL)
	private List<Session> Sessions = new ArrayList<Session>();

	public Programme() {
		super();
	}

	public Programme(Metier.Conference conference) {
		super();
		Conference = conference;
	}

	public int getIdProgramme() {
		return idProgramme;
	}

	public void setIdProgramme(int idProgramme) {
		this.idProgramme = idProgramme;
	}

	public List<Session> getSessions() {
		return Sessions;
	}

	public void setSessions(List<Session> sessions) {
		Sessions = sessions;
	}

	public Conference getConference() {
		return Conference;
	}

	public void setConference(Conference conference) {
		Conference = conference;
	}
}
