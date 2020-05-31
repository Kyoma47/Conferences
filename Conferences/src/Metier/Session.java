package Metier;
import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name="Sessions")

public class Session {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idSession;
	private Date dateSession;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="id_Program")
	private Programme program;
	
	//Liste des interventions :
	public Session() {
	}

	
	public Session(Date dateSession) {
		super();
		this.dateSession = dateSession;
	}

	public int getIdSession() {
		return idSession;
	}

	public void setIdSession(int idSession) {
		this.idSession = idSession;
	}

	public Programme getProgram() {
		return program;
	}

	public void setProgram(Programme program) {
		this.program = program;
	}

	public Date getDateSession() {
		return dateSession;
	}

	public void setDateSession(Date dateSession) {
		this.dateSession = dateSession;
	}
}
