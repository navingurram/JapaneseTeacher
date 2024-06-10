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
	
	@GetMapping("/studentWork")
	public String getstudentWork() {
		return "StudyHomework/studentWork";
	}
	
	@GetMapping("/workinghours")
	public String getworkinghours() {
		return "Hours/workinghours";
	}
	
	@GetMapping("/viewhours")
	public String getviewhours() {
		return "Hours/viewhours";
	}
	
	@GetMapping("/profile")
	public String getprofile() {
		return "Profile/profile";
	}
	
	@GetMapping("/studymaterial")
	public String getstudymaterial() {
		return "studymaterial";
	}
	
	@GetMapping("/changepassword")
	public String getchangepassword() {
		return "Profile/changepassword";
	}
	
	@GetMapping("/support")
	public String gethelpsupport() {
		return "support";
	}

	@GetMapping("/makeover")
	public String getmakeover() {
		return "Makeover/makeover";
	}

	@GetMapping("/notification")
	public String getnotification() {
		return "notification";
	}
}
