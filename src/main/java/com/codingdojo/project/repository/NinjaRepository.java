package com.codingdojo.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.project.model.Ninja;

@Repository
public interface NinjaRepository extends JpaRepository<Ninja, Long> {

}
