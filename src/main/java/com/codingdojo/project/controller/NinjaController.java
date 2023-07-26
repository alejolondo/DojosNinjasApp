package com.codingdojo.project.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.project.model.Ninja;
import com.codingdojo.project.service.AppService;

@Controller
public class NinjaController {

	@Autowired
	private AppService service;
	
	@GetMapping("/ninjas/new")
	public String indexNinjas(@ModelAttribute("ninja")Ninja ninja, Model model) {
		
		model.addAttribute("dojos", service.findAllDojos());
		
		return "newNinja.jsp";
	}
	
	@PostMapping("/ninjas/create")
	public String saveNinja(@Valid @ModelAttribute("ninja")Ninja ninja, BindingResult result, Model model) {
		
		
		if(result.hasErrors()) {
			model.addAttribute("dojos", service.findAllDojos());
			return "newNinja.jsp";
		}else {
			service.saveNinja(ninja);
			return "redirect:/index";
			
		}
	}
}
