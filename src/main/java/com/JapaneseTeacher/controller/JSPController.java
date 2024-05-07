package com.JapaneseTeacher.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class JSPController {

	@GetMapping("/listclasses")
	public String getsubuser() {
		return "BatchDetails/listclasses";
	}
	
	@GetMapping("/viewDetails")
	public String getViewDetails() {
		return "BatchDetails/viewDetails";
	}
	
	@GetMapping("/attendance")
	public String getattendance() {
		return "BatchDetails/attendance";
	}
}
