package mit.arch.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.arch.domain.LotDTO;
import mit.arch.service.BoardService;
import mit.arch.service.InspCharService;
import mit.arch.service.ItemInspCharService;
import mit.arch.service.LotInspResultService;

@Controller
@Log4j
@AllArgsConstructor
public class ArchController {

	private BoardService boardService;
	private InspCharService inspCharService;
	private ItemInspCharService itemInspCharService;
	private LotInspResultService lotInspResultService;
	
	@GetMapping("/material")
	@PreAuthorize("isAuthenticated()")
	public void material(Model model) {
		model.addAttribute("material", boardService.getList());
	}

	@GetMapping("/characteristics")
	public void characteristics(Model model) {
		model.addAttribute("characteristics", inspCharService.getList());
	}
	 
	@GetMapping("/item_insp_char")
	public void itemInspChar(Model model) {
		model.addAttribute("itemInspChar", itemInspCharService.getList());
	}
	
	@GetMapping("/login")
	public void login() {
		
	}
	
	@GetMapping("/lotInspResult")
	public void lotInspResult(Model model) {
		//String lot_no = "L20220420-0032";
		model.addAttribute("lotList",lotInspResultService.getListLot());
		//.addAttribute("sampleList", lotInspResultService.getSampleList(lot_no));
	}

	
//	@GetMapping("/lotInspResult")
//	public @ResponseBody LotDTO doJson(Model model) {
//		
//		LotDTO dto = new LotDTO();
//		dto.getLot_no();
//		
//		return dto;
//	}
	 
		/*
		 * @PostMapping("/register") public void register(BoardVO board,
		 * RedirectAttributes rttr) { log.info("register: " + board);
		 * service.register(board); rttr.addFlashAttribute("result",
		 * board.getItem_code()); }
		 */

}
