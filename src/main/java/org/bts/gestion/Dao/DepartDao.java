package org.bts.gestion.Dao;

import org.bts.gestion.metier.Depart;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DepartDao extends JpaRepository<Depart, Integer> {

}
