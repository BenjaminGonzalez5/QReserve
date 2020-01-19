package fr.epsi.b3.qrcode.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import fr.epsi.b3.qrcode.model.Reservation;
import fr.epsi.b3.qrcode.model.Salle;
import fr.epsi.b3.qrcode.service.SalleService;

@Controller
public class AdministrationController {
	
	@Autowired
	private SalleService salleService;
	
	@GetMapping("/administration")
	public String getAdministration(Model model) {
		List<Salle> salles = salleService.getListSalles();
		model.addAttribute("salles", salles);
		return "administration";
	}
	
	@GetMapping("/details/{id}")
	public String getDetails(@PathVariable int id, Model model) {
		List<Reservation> details = salleService.getDetailsSalle(id);
		for(Reservation reservation : details) {
			String[] participants = reservation.getParticipants().split(";");
			model.addAttribute("participants", participants);
		}
		model.addAttribute("details", details);
		return "detailsReservation";
	}
}
//TODO : Imprimer une étiquette sur /print/{id}
//TODO : Créer des session utilisateurs
//TODO : Navigation dans les jours de la semaine