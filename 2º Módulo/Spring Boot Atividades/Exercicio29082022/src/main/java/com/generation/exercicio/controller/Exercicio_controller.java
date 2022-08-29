package com.generation.exercicio.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/exercicio")
public class Exercicio_controller {
	
	@GetMapping("/hello-word")
	public String helloWorld () {
		return "Hello World";
	}
	
	@GetMapping("/bsm")
	public String bsm () {
		return "MENTALIDADES\r\n"
				+ "Orientação ao futuro \r\n"
				+ "Responsabilidade pessoal\r\n"
				+ "Mentalidade de crescimento \r\n"
				+ "Persistência \r\n"
				+ "\r\n"
				+ "HABILIDADES\r\n"
				+ "Trabalho em equipe\r\n"
				+ "Orientação ao detalhe \r\n"
				+ "Pró-atividade\r\n"
				+ "Comunicação";
	}
	
	@GetMapping("/objetivos")
	public String objetivos () {
		return "Consolidar conhecimentos básicos de Spring Boot";
	}

}
