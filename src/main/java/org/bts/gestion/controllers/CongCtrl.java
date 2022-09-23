package org.bts.gestion.controllers;

import org.bts.gestion.Dao.CongeDao;
import org.bts.gestion.metier.Conge;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cong")

public class CongCtrl {

	private int idC;
	
	@Autowired
	CongeDao congedao;
	
	@GetMapping(value = "/formulaire_demandecong")
	public String fdcg(Model model) {
		model.addAttribute("conge", new Conge());
		return "formulaire_demandecong";
	}
	
	@PostMapping(value = "/saveCong")
	public String svC(Conge cong) {
		cong.setId(idC);
		congedao.save(cong);
		return "redirect:/cong/formulaire_demandecong";
	}
	
	@GetMapping(value = "/Liste_conge")
	public String lc(Model model) {
		model.addAttribute("listConge",congedao.findAll());
		return "Tableau_information_conge";
	}
    
	@GetMapping(value = "/deleteCong")
	public String delC(int id) {
		congedao.delete(congedao.getOne(id));
		return "redirect:/cong/Liste_conge";
	}
	
	@GetMapping(value = "/modifyCong")
		public String mdc(int id,Model model) {
			idC=id;
			model.addAttribute("conge", congedao.getOne(id));
			return "/formulaire_demandecong";
		}
}
	
	
