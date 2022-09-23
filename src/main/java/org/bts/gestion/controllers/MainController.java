package org.bts.gestion.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/acc")
public class MainController {
	
	@GetMapping(value = "/choix")
	public String acc() {
		return "Choixag";
	}
	
	@GetMapping(value ="/choixD")
	public String accD() {
		return "choix_agent";
	}
	

}