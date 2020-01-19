package fr.epsi.b3.qrcode.service;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class DonneesPersonnellesDto {
	@NotNull(message = "Veillez a renseigner un mail !")
	@Size(min = 1, message = "Veillez a renseigner un mail valide !")
	private String mail;

	@NotNull(message = "Veillez a renseigner un nom !")
	@Size(min = 1, message = "Veillez a renseigner un nom valide !")
	private String nom;

	@NotNull(message = "Veillez a renseigner un prenom !")
	@Size(min = 1, message = "Veillez a renseigner un prenom valide !")
	private String prenom;

	@NotNull(message = "Veillez a renseigner un telephone !")
	@Size(min = 1, message = "Veillez a renseigner un telephone valide !")
	private String telephone;

	@NotNull(message = "Veillez a renseigner un mot de passe !")
	@Size(min = 1, message = "Veillez a renseigner un mot de passe valide !")
	private String mdp;

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getNom() {
		return mail;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return mail;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getMdp() {
		return mdp;
	}

	public void setMdp(String mdp) {
		this.mdp = mdp;
	}

}
