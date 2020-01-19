package fr.epsi.b3.qrcode.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import fr.epsi.b3.qrcode.service.DonneesFormulaireDto;

@Controller
public class ReservationController {

	@GetMapping("/reservation")
	public String Formulaire(DonneesFormulaireDto donneesFormulaireDto) {
		return "reservation";
	}
	
	@PostMapping("/resrvation/{id}")
	public String reserver(@PathVariable int id) {
		
		return "accueil";
	}
}
//TODO : Réserver une salle sur /reserver/{id}
//TODO : Envoyer des mails aux participants
//TODO : Ajouter plusieurs participants
//TODO : Ajouter à Google Agenda
//TODO : Proposer un autre créneau