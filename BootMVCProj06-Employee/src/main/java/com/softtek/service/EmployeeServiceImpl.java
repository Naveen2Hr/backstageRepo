package com.softtek.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.softtek.entity.Employee;
import com.softtek.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements IEmployeeMgmtService {

	@Autowired
	EmployeeRepository empRepo;

	@Override
	public Employee insertEmployeeRecord(Employee employee) {
		System.out.println(employee);
		Employee save = empRepo.save(employee);
		return save;
	}

	@Override
	public Integer updateEmployeeRecord(Employee employee) {
		Employee save = empRepo.save(employee);
		return save != null ? 1 : 0;
	}

	@Override
	public Integer deleteEmployeeRecord(Integer empId) {
		empRepo.deleteById(empId);
		return 1;
	}

	@Override
	public Page<Employee> getEmployeeRecordDataByPage(Pageable pageable) {

		return empRepo.findAll(pageable);
	}

	@Override
	public Employee getEmployeeRecord(Integer empId) {
		Optional<Employee> findById = empRepo.findById(empId);

		return findById.get();
	}

}
