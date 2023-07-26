package com.codingdojo.project.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.project.model.Dojo;
import com.codingdojo.project.service.AppService;

@Controller
public class DojoController {
	
	
	@Autowired
	private AppService service;
	
	@GetMapping("/index")
	public String index() {
		return "index.jsp";
	}
	
	@GetMapping("/dojos/new")
	public String indexDojo(@ModelAttribute("dojo")Dojo dojo) {
		
		return "newDojo.jsp";
	}
	
	@PostMapping("/dojos/create")
	public String saveDojo(@Valid @ModelAttribute("dojo")Dojo dojo, BindingResult result) {
		
		if(result.hasErrors()) {
			return "newDojo.jsp";
		}else {
			service.saveDojo(dojo);
			return "redirect:/index";
		}
		
	}
	
	@GetMapping("/dojos/{id}")
	public String dojoDetails(@PathVariable("id")Long id, Model model) {
		
		model.addAttribute("dojo", service.findDojoById(id));
		
		return "dojo.jsp";
	}
}
