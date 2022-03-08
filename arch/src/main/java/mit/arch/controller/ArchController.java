package mit.arch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.arch.service.BoardService;

@Controller
@Log4j
@AllArgsConstructor
public class ArchController {
	
	private BoardService service;
	
	@GetMapping("/register")
	public void register(Model model) {
		
		model.addAttribute("register", service.getList());
		
	}

}
