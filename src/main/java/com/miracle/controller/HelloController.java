package com.miracle.controller;

import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
public class HelloController {
	  public static final String REST_SERVICE_USERS_URI = "http://localhost:8090/rest/users";
	  public static final String REST_SERVICE_CARS_URI = "http://localhost:8090/rest/cars";
	  public static List<LinkedHashMap<String, Object>> usersMap ;
	  public static List<LinkedHashMap<String, Object>> carsMap ;
	  
	  private static void listAllUsers(){
		  	RestTemplate restTemplate = new RestTemplate();
	        usersMap = restTemplate.getForObject(REST_SERVICE_USERS_URI+"/all/", List.class);
	  
	    }
	  
	  private static void listAllCars(){
		  	RestTemplate restTemplate = new RestTemplate();
	        carsMap = restTemplate.getForObject(REST_SERVICE_CARS_URI+"/all/", List.class);
	  
	    }
   @RequestMapping("/")
   public String index() {
	  
      return "index";
   }
   @GetMapping("/hello")
   public String sayHome( Model model) {
	  
	  model.addAttribute("usersmap",usersMap);
	  model.addAttribute("carsmap",carsMap); 
      return "hello";
   }
   @GetMapping("/repossession")
   public String sayrepossession( Model model) {
	 
	  model.addAttribute("usersmap",usersMap);
	  model.addAttribute("carsmap",carsMap); 
      return "repossession";
   }
   @GetMapping("/skipTracing")
   public String sayskipTracing( Model model) {
	   
	  model.addAttribute("usersmap",usersMap);
	  model.addAttribute("carsmap",carsMap); 
      return "skipTracing";
   }
   @GetMapping("/remarketing")
   public String sayremarketing( Model model) {
	   
	  model.addAttribute("usersmap",usersMap);
	  model.addAttribute("carsmap",carsMap); 
      return "remarketing";
   }
   @GetMapping("/titleServices")
   public String saytitleServices( Model model) {
	   
	  model.addAttribute("usersmap",usersMap);
	  model.addAttribute("carsmap",carsMap); 
      return "titleServices";
   }

   @PostMapping("/hello")
   public String sayHello(@RequestParam("email") String email,@RequestParam("password") String password, Model model) {
	   listAllUsers();
	   listAllCars();
	   model.addAttribute("usersmap",usersMap);
       model.addAttribute("carsmap",carsMap);
       model.addAttribute("username",email); 
       
	return "hello";
	
	   
   }
}
