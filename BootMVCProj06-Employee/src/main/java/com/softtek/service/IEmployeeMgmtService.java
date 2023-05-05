package com.softtek.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.softtek.entity.Employee;

public interface IEmployeeMgmtService {

	public Employee insertEmployeeRecord(Employee employee);

	public Integer updateEmployeeRecord(Employee employee);

	public Integer deleteEmployeeRecord(Integer empId);

	public Employee getEmployeeRecord(Integer empId);

	public Page<Employee> getEmployeeRecordDataByPage(Pageable pageable);
}
