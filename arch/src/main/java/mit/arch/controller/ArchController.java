package mit.arch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.arch.domain.BoardVO;
import mit.arch.service.BoardService;

@Controller
@Log4j
@AllArgsConstructor
public class ArchController {

	private BoardService service;

	 @GetMapping("/register")
	 //@ResponseBody	 
	 public void register(Model model) {
		 model.addAttribute("register", service.getList());
	 }

		/*
		 * @PostMapping("/register") public void register(BoardVO board,
		 * RedirectAttributes rttr) { log.info("register: " + board);
		 * service.register(board); rttr.addFlashAttribute("result",
		 * board.getItem_code()); }
		 */

}
