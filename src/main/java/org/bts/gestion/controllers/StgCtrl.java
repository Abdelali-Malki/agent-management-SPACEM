package org.bts.gestion.controllers;

import org.bts.gestion.Dao.StagiaireDao;
import org.bts.gestion.metier.Stagiaire;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/stg")
public class StgCtrl {
	
	private int idp;
	
	@Autowired
	StagiaireDao stgdao;
	
	@GetMapping(value = "/formulaire_stagiaire")
	public String fe(Model model) {
		model.addAttribute("stagiaire", new Stagiaire());
		return "/formulaire_stagiaire";
	}
	@GetMapping(value = "/formulaire_demandesta")
	public String fds(Model model) {
		model.addAttribute("stagiaire", new Stagiaire());
		return "/formulaire_demandesta";
	}
	
	@PostMapping(value = "/saveStg")
	public String sv(Stagiaire stg) {
		stg.setId(idp);
		stgdao.save(stg);
		return "redirect:/stg/formulaire_stagiaire";
	}
	
	@GetMapping(value = "/Liste_stagiaires")
	public String ls(Model model) {
		model.addAttribute("listStg", stgdao.findAll());
		return "Tableau_information_stagiaire";
	}	
	
	@GetMapping(value = "/deleteStg")
	public String del(int id) {
		stgdao.delete(stgdao.getOne(id));
		return "redirect:/stg/Liste_stagiaires";
	}	
	
	@GetMapping(value = "/modifyStg")
	public String mdf(int id,Model model) {
		idp=id;
		model.addAttribute("stagiaire", stgdao.getOne(id));
		return "/formulaire_stagiaire";
	}

}
