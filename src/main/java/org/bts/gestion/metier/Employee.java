package org.bts.gestion.metier;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Employee extends Personne {

	private String departement;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateR;
	private String post;

	public Employee(int id, String nom, String prenom, String cin, String ville, String email, String mdp, Date dateN,
			String departement, Date dateR, String post) {
		super(id, nom, prenom, cin, ville, email, mdp, dateN);
		this.departement = departement;
		this.dateR = dateR;
		this.post = post;
	}

	public Employee() {

	}

	public String getDepartement() {
		return departement;
	}

	public void setDepartement(String departement) {
		this.departement = departement;
	}

	public Date getDateR() {
		return dateR;
	}

	public void setDateR(Date dateR) {
		this.dateR = dateR;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	
	
}
