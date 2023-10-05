package com.example.model;

import java.time.LocalDate;

import com.example.util.Gender;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Emp {
	public Emp(int empno2, String ename2, Object gender2, Object job2, Object mgr2, Object hiredate2, Object sal2,
			Object comm2, Object deptno2) {
		// TODO Auto-generated constructor stub
	}
	Integer 	empno;
	String		ename;
	Gender		gender;
	String		job;
	Integer	mgr;
	LocalDate	hiredate;
	Double		sal;
	Double		comm;
	Integer	deptno;
}
