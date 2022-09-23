package org.bts.gestion.controllers;

import org.bts.gestion.Dao.StageDao;
import org.bts.gestion.metier.Attestation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/att")
public class AttestationCtrl {
	
	private int idA;
	
	@Autowired
	StageDao stagedao;
	
	@GetMapping(value = "/formulaire_demandesta")
	public String fdsta(Model model) {
		model.addAttribute("stage", new Attestation());
		return "formulaire_demandesta";
	}
	
	@PostMapping(value = "/saveStage")
	public String svsta(Attestation attestation) {
		attestation.setId(idA);
		stagedao.save(attestation);
		return "redirect:/att/formulaire_demandesta";
	}
	
	@GetMapping(value = "/Liste_attestation")
	public String le(Model model) {
		model.addAttribute("listStage", stagedao.findAll());
		return "Tableau_information_stage";
	}	
	@GetMapping(value = "/deleteAtt")
	public String delC(int id) {
		stagedao.delete(stagedao.getOne(id));
		return "redirect:/att/Liste_attestation";
	}
	
	@GetMapping(value = "/modifyAtt")
		public String mdatt(int id,Model model) {
			idA =id;
			model.addAttribute("Attestation", stagedao.getOne(id));
			return "/formulaire_demandesta";
		}
}
