package com.codingdojo.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.project.model.Dojo;
import com.codingdojo.project.model.Ninja;
import com.codingdojo.project.repository.DojoRepository;
import com.codingdojo.project.repository.NinjaRepository;

@Service
public class AppService {

	@Autowired
	private DojoRepository dojoRepository;
	
	@Autowired 
	private NinjaRepository ninjaRepository;
	
	public List<Dojo> findAllDojos(){
		return dojoRepository.findAll();
	}
	
	public Dojo findDojoById(Long id) {
		return dojoRepository.findById(id).orElse(null);
	}
	
	public Dojo saveDojo(Dojo dojo) {
		return dojoRepository.save(dojo);
	}
	
	public void deleteDojo(Long id) {
		dojoRepository.deleteById(id);
	}
	
	public List<Ninja> findAllNinjas(){
		return ninjaRepository.findAll();
	}
	
	public Ninja findNinjaById(Long id) {
		return ninjaRepository.findById(id).orElse(null);
	}
	
	public Ninja saveNinja(Ninja ninja) {
		return ninjaRepository.save(ninja);
	}
	
	public void deleteNinja(Long id) {
		ninjaRepository.deleteById(id);
	}
}
