package com.databases;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication
public class PhasefiveWebAppApplication{

	public static void main(String[] args) {
        ApplicationContext ctx = SpringApplication.run(PhasefiveWebAppApplication.class, args);
		System.out.println("Spring boot application started.");
	}


}