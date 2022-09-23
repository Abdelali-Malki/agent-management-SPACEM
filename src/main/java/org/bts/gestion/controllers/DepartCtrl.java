package org.bts.gestion.controllers;

import org.bts.gestion.Dao.DepartDao;
import org.bts.gestion.metier.Depart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/dep")
public class DepartCtrl {
	private int idD;
	
	@Autowired
	DepartDao depdao;
	
	@GetMapping(value = "/formulaire_demandedep")
	public String fdpp(Model model) {
		model.addAttribute("depart", new Depart());
		return "formulaire_demandedep";
	}
	
    @PostMapping(value = "/saveDep")
    public String svD(Depart dep) {
    	dep.setId(idD);
    	depdao.save(dep);
    	return "redirect:/dep/formulaire_demandedep";
    }
    
    @GetMapping(value = "/Liste_demande_depart")
    public String ld(Model model) {
    	model.addAttribute("listDepart", depdao.findAll());
    	return "Tableau_information_depart";
    }
    
    @GetMapping(value = "/deleteDep")
    public String delC(int id) {
    	depdao.delete(depdao.getOne(id));
    	return "redirect:/dep/Liste_demande_depart";
    }
    
    @GetMapping(value = "/modifyDep")
    public String mdc(int id,Model model) {
    	idD=id;
    	model.addAttribute("depart", depdao.getOne(id));
    	return "/formulaire_demandedep";
    }
}
