package fr.epsi.b3.qrcode.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AccueilController {

	@GetMapping("/")
	public String accueil(Model model) {
		model.addAttribute("admin", false);
		model.addAttribute("connected", false);
		return "accueil";
	}

}
