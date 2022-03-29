package mit.arch.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.arch.domain.BoardVO;
import mit.arch.service.BoardService;

@RestController
@Log4j
@AllArgsConstructor
public class ItemController {
	
	private BoardService service;
	
	@PostMapping(value="/item",
			consumes = "application/json",
			produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> register(@RequestBody BoardVO board) {
	
		int insertCount = service.register(board);
		log.info("등록 처리결과"+insertCount);
		
		return insertCount == 1
		? new ResponseEntity<>("success", HttpStatus.OK)
		:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping(value = "/item/{item_code:.+}",
			produces = {MediaType.APPLICATION_JSON_UTF8_VALUE,MediaType.APPLICATION_XML_VALUE})
	public ResponseEntity<BoardVO> get(@PathVariable("item_code") String item_code){
		return new ResponseEntity<>(service.get(item_code), HttpStatus.OK);
	}
	
	@DeleteMapping(value = "/item/{item_code:.+}", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(@PathVariable("item_code") String item_code){
		log.info("삭제용 아이템코드:"+item_code);
		return service.remove(item_code) == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH},
			value = "/item/{item_code:.+}", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> modify(
			@RequestBody BoardVO board,
			@PathVariable("item_code") String item_code){
		board.setItem_code(item_code);
		return service.modify(board)==1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

}
