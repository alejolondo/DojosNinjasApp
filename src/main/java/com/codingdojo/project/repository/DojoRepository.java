package com.codingdojo.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.project.model.Dojo;

@Repository
public interface DojoRepository  extends JpaRepository<Dojo, Long> {
	
	

}
