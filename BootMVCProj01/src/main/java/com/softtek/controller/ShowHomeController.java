package com.softtek.controller;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.support.BindingAwareModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShowHomeController {

	@Autowired
	ServletConfig config;

	@Autowired
	ServletContext context;

	@RequestMapping("/")
	public String showMHome() {
		// return LVN
		return "welcome";
	}

	// It is good practice of using Map cause it is given by Java
//	@RequestMapping("/process")
//	public String process(Map<String, Object> map) {
//		System.out.println("ShowHomeController.process():: shareMemory Object class Name ::" + map.getClass());
//		// add model attributes to shared memory
//		map.put("att1", "val1");
//		map.put("sysDt", LocalDateTime.now());
//		return "show_data";
//	}

	// Not a good practice it will be a issue where it is given by spring
	/*
	 * @RequestMapping("/process") public String process(Model model) { System.out.
	 * println("ShowHomeController.process():: shareMemory Object class Name ::" +
	 * model.getClass()); // add model attributes to shared memory
	 * model.addAttribute("att1", "val1"); model.addAttribute("att2",
	 * LocalDateTime.now()); return "show_data"; }
	 */

//	@RequestMapping("/show_data")
//	public Model process1() {
//		Model model = new BindingAwareModelMap();
//		model.addAttribute("att1", "Hello Everyone");
//		model.addAttribute("sysDt", LocalDateTime.now());
//		return model;
//	}
//
//	@RequestMapping("/show_data")
//	public Map<String, Object> process() {
//		Map<String, Object> map = new HashMap();
//		map.put("att1", "Hello Everyone");
//		map.put("sysDt", LocalDateTime.now());
//		return map;
//	}

	@RequestMapping("/process")
	public String process2(HttpServletRequest req, HttpServletResponse res) {
		System.out.println("ShowHomeController.process2()::" + req.hashCode());
//		System.out.println("ServletConfig :: "+config.);
		req.setAttribute("att1", "val1");
		return "show_data";
	}

}
