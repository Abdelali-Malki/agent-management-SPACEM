package org.bts.gestion.metier;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Depart extends Demande {

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date daterec;
	private String poste;

	public Depart() {

	}

	public Depart(int id, String nom, String prenom, String cin, String departement, Date daterec, String poste) {
		super(id, nom, prenom, cin, departement);
		this.daterec = daterec;
		this.poste = poste;
	}

	public Date getDaterec() {
		return daterec;
	}

	public void setDaterec(Date daterec) {
		this.daterec = daterec;
	}

	public String getPoste() {
		return poste;
	}

	public void setPoste(String poste) {
		this.poste = poste;
	}
	

}
