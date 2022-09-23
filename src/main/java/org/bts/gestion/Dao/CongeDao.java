package org.bts.gestion.Dao;

import java.util.List;

import org.bts.gestion.metier.Conge;
import org.springframework.data.domain.Example;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CongeDao extends JpaRepository<Conge, Integer> {

}
