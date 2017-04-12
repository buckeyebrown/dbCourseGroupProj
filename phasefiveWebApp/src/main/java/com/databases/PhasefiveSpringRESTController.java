package com.databases;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;


import javax.servlet.http.HttpServletResponse;

//import com.omspipeline.backend.JSONResponse;
//import com.omspipeline.backend.ObtainOrderNumberAndMarketCode;
//import com.omspipeline.backend.SQLConnect;

import java.io.PrintWriter;

import java.sql.SQLException;
import java.io.IOException;
//import org.json.JSONException;

@RestController
public class PhasefiveSpringRESTController {
	public static PrintWriter out;

	@RequestMapping("/")
	String home() {
		return "Hello World!";
	}

	@RequestMapping("/example")
	public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
		model.addAttribute("name", name);
		return "hello";
	}

}