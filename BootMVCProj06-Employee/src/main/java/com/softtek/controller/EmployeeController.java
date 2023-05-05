package com.softtek.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.softtek.entity.Employee;
import com.softtek.service.IEmployeeMgmtService;

@Controller
public class EmployeeController {

	@Autowired
	IEmployeeMgmtService service;

	@RequestMapping("/")
	public String showHomePage() {
		return "home";
	}

	@GetMapping("/record")
	public String showEmployeeTable(
			@PageableDefault(page = 0, size = 4, sort = "empId", direction = Sort.Direction.ASC) Pageable pageable,
			Map<String, Object> map) {

		Page<Employee> page = service.getEmployeeRecordDataByPage(pageable);

		map.put("empPage", page);
		return "show_employee_table";
	}

	@RequestMapping("/edit")
	public String showUpdateEmployee(Map<String, Object> map, HttpServletRequest req) {

		Integer empid = Integer.parseInt(req.getParameter("empId"));
		Employee employee = service.getEmployeeRecord(empid);
		System.out.println(employee);

		map.put("employee", employee);

		return "employee_update";
	}

	@PostMapping("/update")
	public String updateEmployeeRecord(HttpServletRequest req) {
		Employee employee = new Employee();
		employee.setEmpId(Integer.parseInt(req.getParameter("empId")));
		employee.setEmpName(req.getParameter("empName"));
		employee.setEmpMobileNo(Long.parseLong(req.getParameter("empMobileNo")));
		employee.setEmpAddrs(req.getParameter("empAddrs"));
		employee.setEmpRole(req.getParameter("empRole"));
		employee.setEmpSalary(Double.parseDouble(req.getParameter("empSalary")));

		service.updateEmployeeRecord(employee);

		return "home";
	}

	@GetMapping("/delete")
	public String deleteEmployeeRecord(HttpServletRequest req, Map<String, Object> map) {
		Integer empId = Integer.parseInt(req.getParameter("empId"));
		service.deleteEmployeeRecord(empId);
		return "home";
	}

	@GetMapping("/new")
	public String showEmployeeForm() {
		return "employee_form";
	}

	@PostMapping("/insert")
	public String insertEmployeeRecord(HttpServletRequest req) {
		Employee employee = new Employee();
		employee.setEmpName(req.getParameter("empName"));
		employee.setEmpMobileNo(Long.parseLong(req.getParameter("empMobileNo")));
		employee.setEmpAddrs(req.getParameter("empAddrs"));
		employee.setEmpRole(req.getParameter("empRole"));
		employee.setEmpSalary(Double.parseDouble(req.getParameter("empSalary")));

		System.out.println();
		Employee insert = service.insertEmployeeRecord(employee);
		return insert != null ? "home" : "employee_form";

	}

}
