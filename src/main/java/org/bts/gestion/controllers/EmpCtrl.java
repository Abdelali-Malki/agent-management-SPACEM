package org.bts.gestion.controllers;

import org.bts.gestion.Dao.EmployeDao;
import org.bts.gestion.metier.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/emp")
public class EmpCtrl {
	
	private int ide;
	
	@Autowired
	EmployeDao empdao;
	
	@GetMapping(value = "/formulaire_employee")
	public String fe(Model model) {
		model.addAttribute("employee", new Employee());
		return "formulaire_employee";
	}
	
	@GetMapping(value = "/typedemande_emp")
	public String fde(Model model) {
		model.addAttribute("employee", new Employee());
		return "typedemande_emp";
	}
	
	@PostMapping(value = "/saveEmp")
	public String sv(Employee emp) {
		emp.setId(ide);
		empdao.save(emp);
		return "redirect:/emp/formulaire_employee";
	}
	
	@GetMapping(value = "/Liste_employees")
	public String le(Model model) {
		model.addAttribute("listEmployee", empdao.findAll());
		return "Tableau_information_employe";
	}	
	
	@GetMapping(value = "/deleteEmp")
	public String del(int id) {
		empdao.delete(empdao.getOne(id));
		return "redirect:/emp/Liste_employees";
	}
	
	@GetMapping(value = "/modifyEmp")
	public String mdf(int id,Model model) {
		ide=id;
		model.addAttribute("employee", empdao.getOne(id));
		return "/formulaire_employee";
	}

}
