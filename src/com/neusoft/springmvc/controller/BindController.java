package com.neusoft.springmvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.springmvc.bean.Dept;
import com.neusoft.springmvc.bean.Emp;

@Controller
@RequestMapping("/bind")
public class BindController {
	Logger log = LoggerFactory.getLogger(BindController.class);
	private ArrayList<Emp> list = new ArrayList<Emp>();
	public BindController() {
		for(int i = 0; i < 10; i++) {
			Emp e = new Emp();
			e.setEmpno(i + 100);
			e.setEname("emp" + i);
			e.setSal(2000 + i * 100);
			Date date = new Date();
			date.setYear(100 + i);
			e.setHiredate(date);
			list.add(e);
		}
	}
	@RequestMapping("/listitem")
	public void list2(Model model) {
		model.addAttribute("list", list);
	}
	@RequestMapping("/update")
	public void update(Dept dept, HttpServletResponse response) throws IOException {
		for(Emp e : dept.getEmplist()) {
			log.info(e.toString());
		}
		this.list = dept.getEmplist();
		response.sendRedirect("listitem");
	}
	@RequestMapping("/list")
	public ModelAndView list() {
		for(Emp e : list) {
			log.info(e.toString());
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("bind/array");
		return mav;
	}
	@RequestMapping("/multidel")
	public void deleteSelected(int[] delarray, HttpServletResponse response) throws IOException {
		log.info(Arrays.toString(delarray));
		for(int i = 0; i < delarray.length; i++) {
			for(int j = 0; j < list.size(); j++) {
				Emp e = list.get(j);
				if(delarray[i] == e.getEmpno()) {
					list.remove(j);
					break;
				}
			}
		}
		response.sendRedirect("list");
	}
	@RequestMapping("/base")
	public void base(Integer age, Float sal, boolean ismale) {
		
		log.info("Age:" + age + "; Sal:" + sal + "; Male:" + ismale);
	}
	@RequestMapping("/anno")
	public void anno(@RequestParam(value="age", defaultValue="2", required=true) Integer aaa, Float sal, boolean ismale) {
		log.info("Age:" + aaa + "; Sal:" + sal + "; Male:" + ismale);
	}
	
	@RequestMapping("/execadd")
	public void add(Emp e) {
		log.info(e.toString());
	}
	
	@RequestMapping("/add")
	public String help(Integer age) {
		return "bind/add";
	}

}
