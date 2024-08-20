package employeedata.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import employeedata.dao.EmployeeDao;
import employeedata.dto.Employeedto;

@Controller
public class appController {
	
	String message = "Wrong Password";

	@Autowired
	EmployeeDao dao;

	@Autowired
	ModelAndView modelview;

	@RequestMapping("/signup")
	public ModelAndView signup() {
		modelview.setViewName("signup.jsp");
		modelview.addObject("emp", new Employeedto());
		return modelview;
	}

	@RequestMapping("/saveemployee")
	public ModelAndView saveemployee(@ModelAttribute Employeedto emp) {
		dao.saveEmployee(emp);
		modelview.setViewName("login.jsp");
		return modelview;
	}

	@RequestMapping("/login")
	public ModelAndView login(@RequestParam String email, @RequestParam String password) {
		Employeedto emp = dao.findbyEmail(email);
		if (emp != null) {
			if (emp.getEmployee_password().equals(password)) {
				return new ModelAndView("redirect:/home");
			} else {
				return new ModelAndView("login.jsp").addObject(message);
			}
		} else {
			return new ModelAndView("login.jsp");
		}
	}

	@RequestMapping("/new-employee")
	public ModelAndView add_new() {
		modelview.setViewName("add-newemp.jsp");
		modelview.addObject("emp", new Employeedto());
		return modelview;
	}

	@RequestMapping("/new_emp")
	public ModelAndView save_newemployee(@ModelAttribute Employeedto emp) {
		dao.saveEmployee(emp);
		return new ModelAndView("redirect:/home");
	}

	@RequestMapping("/delete")
	public ModelAndView delete_Employee(@RequestParam int id) {
		dao.deleteEmployee(id);
		return new ModelAndView("redirect:/home");
	}

	@RequestMapping("/edit")
	public ModelAndView edit_employee(@RequestParam int id) {
		Employeedto emp = dao.findbyID(id);
		modelview.setViewName("edit.jsp");
		modelview.addObject("emps", emp);
		return modelview;
	}
	
	@RequestMapping("/updateemployee")
	public ModelAndView update_employee(@ModelAttribute Employeedto emp , @RequestParam int id) {
		dao.updateEmployeedto(emp,id);
		return new ModelAndView("redirect:/home");
	}
	
	@RequestMapping("/home")
	public ModelAndView home() {
		
		modelview.setViewName("home.jsp");
		modelview.addObject("emps", dao.getallEmployee());
		return modelview;
	}

}
