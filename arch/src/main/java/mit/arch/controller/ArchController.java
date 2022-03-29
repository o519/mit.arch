package mit.arch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.arch.service.BoardService;
import mit.arch.service.InspCharService;

@Controller
@Log4j
@AllArgsConstructor
public class ArchController {

	private BoardService service;
	
	private InspCharService service2;

	 @GetMapping("/material")
	 public void material(Model model) {
		 model.addAttribute("material", service.getList());
	 }

	 @GetMapping("/characteristics")
	 public void characteristics(Model model) {
		model.addAttribute("characteristics", service2.getList());
	 }
		/*
		 * @PostMapping("/register") public void register(BoardVO board,
		 * RedirectAttributes rttr) { log.info("register: " + board);
		 * service.register(board); rttr.addFlashAttribute("result",
		 * board.getItem_code()); }
		 */

}
