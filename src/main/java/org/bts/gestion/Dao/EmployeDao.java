package org.bts.gestion.Dao;

import org.bts.gestion.metier.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeDao extends JpaRepository<Employee, Integer> {

}
