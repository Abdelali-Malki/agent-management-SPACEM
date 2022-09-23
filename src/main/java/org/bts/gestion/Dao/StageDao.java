package org.bts.gestion.Dao;

import org.bts.gestion.metier.Attestation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StageDao extends JpaRepository<Attestation, Integer>{

}
