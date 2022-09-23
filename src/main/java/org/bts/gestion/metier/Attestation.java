package org.bts.gestion.metier;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Attestation extends Demande {

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date datedeb;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date datefin;

	public Attestation() {

	}
	public Date getDatedeb() {
		return datedeb;
	}
	public void setDatedeb(Date datedeb) {
		this.datedeb = datedeb;
	}
	public Date getDatefin() {
		return datefin;
	}
	public void setDatefin(Date datefin) {
		this.datefin = datefin;
	}
	public Attestation(int id, String nom, String prenom, String cin, String departement, Date datedeb, Date datefin) {
		super(id, nom, prenom, cin, departement);
		this.datedeb = datedeb;
		this.datefin = datefin;
	}
	

}
