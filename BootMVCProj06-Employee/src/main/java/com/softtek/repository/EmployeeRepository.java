package com.softtek.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.softtek.entity.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer>, CrudRepository<Employee, Integer>,
		PagingAndSortingRepository<Employee, Integer> {

}
