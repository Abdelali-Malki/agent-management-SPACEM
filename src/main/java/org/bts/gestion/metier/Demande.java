package org.bts.gestion.metier;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)

public class Demande {

		@Id
		@GeneratedValue(strategy = GenerationType.TABLE)
		private int id;
		private String nom;
		private String prenom;
		private String cin;
		private String departement;


		public Demande(int id, String nom, String prenom, String cin, String departement) {
			super();
			this.id = id;
			this.nom = nom;
			this.prenom = prenom;
			this.cin = cin;
			this.departement = departement;
		}

		public Demande () {
			
		}
		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getNom() {
			return nom;
		}

		public void setNom(String nom) {
			this.nom = nom;
		}

		public String getPrenom() {
			return prenom;
		}

		public void setPrenom(String prenom) {
			this.prenom = prenom;
		}

		public String getCin() {
			return cin;
		}

		public void setCin(String cin) {
			this.cin = cin;
		}

		public String getDepartement() {
			return departement;
		}

		public void setDepartement(String departement) {
			this.departement = departement;
		}
		
}
