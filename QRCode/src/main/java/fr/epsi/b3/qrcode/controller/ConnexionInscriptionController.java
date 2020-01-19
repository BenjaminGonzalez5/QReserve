package fr.epsi.b3.qrcode.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import fr.epsi.b3.qrcode.model.Utilisateur;
import fr.epsi.b3.qrcode.service.ConnexionService;
import fr.epsi.b3.qrcode.service.DonneesConnexionDto;
import fr.epsi.b3.qrcode.service.DonneesPersonnellesDto;
import fr.epsi.b3.qrcode.service.InscriptionService;

@Controller
public class ConnexionInscriptionController {

	@Autowired
	private ConnexionService connexionService;

	@Autowired
	private InscriptionService inscriptionService;

	@GetMapping("/inscription")
	public String getInscription(DonneesPersonnellesDto donneesPersonnellesDto) {
		return "inscription";
	}

	@PostMapping("/inscription")
	public String inscription(@Validated DonneesPersonnellesDto donneesPersonnellesDto, Model model) {
		inscriptionService.createUser(donneesPersonnellesDto);
		model.addAttribute("admin", false);
		model.addAttribute("connected", false);
		return "accueil";
	}

	@GetMapping("/connexion")
	public String getConnexion(DonneesConnexionDto donneesConnexionDto) {
		return "connexion";
	}

	@PostMapping("/connexion")
	public String connexion(DonneesConnexionDto donneesConnexionDto, Model model) {
		try {
			Utilisateur user = connexionService.getUser(donneesConnexionDto.getMail());
			if (user.getStatut() == 1) {
				model.addAttribute("admin", true);
				model.addAttribute("connected", true);
				return "accueil";
			} else {
				model.addAttribute("admin", false);
				model.addAttribute("connected", true);
				return "accueil";
			}
		} catch (Exception e) {
			return "connexion";
		}
	}

}
