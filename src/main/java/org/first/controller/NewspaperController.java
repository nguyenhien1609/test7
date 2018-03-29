package org.first.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import java.sql.Date;

import javax.servlet.http.HttpSession;

import org.first.model.news;
import org.first.model.user;
import org.first.service.NewService;
import org.first.service.userService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.api.client.http.HttpRequest;
import com.google.api.client.util.DateTime;


@Controller
public class NewspaperController {	
	@Autowired
	NewService newservice;
	@Autowired
	userService userservice;
	@GetMapping("/home")
	public String homepage(Model mm){
		mm.addAttribute("listNew",newservice.findAll());
		return "homepage";
	}
	@GetMapping("/news")
	public String news(Model mm){
		mm.addAttribute("listNew",newservice.findAll());
		int id= newservice.getIdMax();
		news nl= newservice.findById(id);
		mm.addAttribute("newLast",nl);
		return "redirect:/changeLinkNews/"+id;
	}
	@GetMapping("/login")
	public String login(){
		return "login";
	}
	@GetMapping("/logout")
	public String logout(HttpSession session){
		session.invalidate();
		
		return "redirect:/home"; 
		
	}
	@PostMapping("/login/check")
	public String welcome(@RequestParam("userName") String userName, @RequestParam("pass") String pass, HttpSession session){
		user un=userservice.FindByUser(userName.trim(),pass.trim());
		if(un==null){		
			
			return "/login";
		}
		session.setAttribute("userName", userName);
		session.setAttribute("fullName", un.getFullName());
		return "redirect:/home";
	}
	@GetMapping("/CreateNew")
	public String createNew(){
		return "createnew";
	}
	@PostMapping("/CreateNew/Create")
	public String createNewPost(@RequestParam("title") String tt, @RequestParam("Content") String ct, HttpSession session){
		news n= new news();
		n.setTitle(tt);
		n.setContent(ct);
		n.setUserName((String) session.getAttribute("userName"));
		
		newservice.save(n);
		return "createnew";
	}
	@GetMapping("/changeLinkNews/{id}")
	public String changeLinkNews(@PathVariable(name="id") int id, Model mm){
		mm.addAttribute("listNew",newservice.findAll());		
		news nl= newservice.findById(id);
		mm.addAttribute("newLast",nl);
		return "newpage";		
	}
	@GetMapping("/CreateNew/edit/{id}")
	public String createNew(@PathVariable(name="id") int id, Model mm){	
		news n= newservice.findById(id);
		mm.addAttribute("id",id);
		mm.addAttribute("title",n.getTitle());
		mm.addAttribute("content",n.getContent());
		return "createnew";
	}
	@PostMapping("/createNew/edits/{id}")
	public String editPost(@PathVariable(name="id") int id, @RequestParam("title") String tt, @RequestParam("Content") String ct, HttpSession session){
		newservice.delete(id);
		
		news n= new news();
		n.setTitle(tt.trim());
		n.setContent(ct.trim());
		n.setUserName((String) session.getAttribute("userName"));		
		newservice.save(n);
		return "redirect:/news";
	}
	@GetMapping("/delete/{id}")
	public String deleteNew(@PathVariable(name="id") int id){
		newservice.delete(id);
		return "redirect:/news";
	}
}
