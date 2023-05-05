package com.softtek.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Data;

@Entity
@Table(name = "EMPLOYEE")
@Data
public class Employee {

	@Column(name = "EMPID")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer empId;

	@Column(name = "EMP_NAME")
	private String empName;

	@Column(name = "EMP_ADDRS")
	private String empAddrs;

	@Column(name = "EMP_MOBILENO")
	private Long empMobileNo;

	@Column(name = "EMP_ROLE")
	private String empRole;

	@Column(name = "EMP_SALARY")
	private Double empSalary;

	@Transient
	private String vFlag = "no";

}
