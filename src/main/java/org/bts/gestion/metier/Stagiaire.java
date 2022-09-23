package org.bts.gestion.metier;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Stagiaire extends Personne {

	private String departement;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateD;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateF;
	public String getDepartement() {
		return departement;
	}
	public void setDepartement(String departement) {
		this.departement = departement;
	}
	public Date getDateD() {
		return dateD;
	}
	public void setDateD(Date dateD) {
		this.dateD = dateD;
	}
	public Date getDateF() {
		return dateF;
	}
	public void setDateF(Date dateF) {
		this.dateF = dateF;
	}
	public Stagiaire(int id, String nom, String prenom, String cin, String ville, String email, String mdp, Date dateN,
			String departement, Date dateD, Date dateF) {
		super(id, nom, prenom, cin, ville, email, mdp, dateN);
		this.departement = departement;
		this.dateD = dateD;
		this.dateF = dateF;
	}
	public Stagiaire() {
		
	}
	
	
	
}
