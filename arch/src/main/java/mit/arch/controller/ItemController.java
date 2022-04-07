package mit.arch.controller;

import java.util.List;

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
			produces = "text/plain; charset=UTF-8")
	public ResponseEntity<String> register(@RequestBody BoardVO board) {
		int insertCount = service.register(board);
		log.info("등록 처리결과"+insertCount);
		return insertCount == 1
		? new ResponseEntity<>("등록성공 - " + board.getItem_code(), HttpStatus.OK)
		:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	/*
	 * @PostMapping(value="/item_insp_char/add", consumes = "application/json",
	 * produces = { MediaType.TEXT_PLAIN_VALUE }) public ResponseEntity<String>
	 * insertItemInspChar(@RequestBody ItemInspCharVO itemInspChar) {
	 * 
	 * int insertCount = service.insertItemInspChar(itemInspChar);
	 * log.info("등록 처리결과"+insertCount);
	 * 
	 * return insertCount == 1? new ResponseEntity<>("success", HttpStatus.OK):new
	 * ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR); }
	 */
	
	@GetMapping(value = "/item/{item_code:.+}",	produces = {MediaType.APPLICATION_JSON_UTF8_VALUE,MediaType.APPLICATION_XML_VALUE})
	public ResponseEntity<BoardVO> get(@PathVariable("item_code") String item_code){
		return new ResponseEntity<>(service.get(item_code), HttpStatus.OK);
	}
	@DeleteMapping(value = "/item/{item_code:.+}", produces="text/plain; charset=UTF-8")
	public ResponseEntity<String> remove(@PathVariable("item_code") String item_code){
		log.info(item_code);
		String[] code = item_code.split(",");
		//log.info("아아아아" + code[1]);
		//log.info("1.삭제용 아이템코드:"+item_code);
		
		String a = "삭제성공 - ";
		String b = "삭제불가 - ";
		
		//삭제가능한 코드와 불가능한 코드 분리
		for(String i:code) {
			log.info(i);
			if(service.remove(i) == 1)
				a += (i+", ");
			else if(service.remove(i) == 2)
				b += (i+", ");
		}
		a = a.replaceAll("[\\s,]+$", "");
		b = b.replaceAll("[\\s,]+$", "");
		//삭제 가능한 코드만 삭제처리
		//삭제된 코드와 처리가 안된 코드를 알려줌(알림창) 내용을 문자열로 전송
		//삭제성공 - code1, code2
		//삭제불가 - 등록된 아이템코드(code3, code4)
		if(a.equals("삭제성공 -"))
			return new ResponseEntity<>(b, HttpStatus.OK);
		else if(b.equals("삭제불가 -"))
			return new ResponseEntity<>(a, HttpStatus.OK);
		else
			return new ResponseEntity<>(a + "\n" + b, HttpStatus.OK);
		/*
		 * if(service.remove(item_code) == 1) return new ResponseEntity<>("삭제성공("+
		 * item_code + ")", HttpStatus.OK); else if(service.remove(item_code) == 2)
		 * return new ResponseEntity<>("삭제불가 - 등록된 자재코드(" + item_code + ")",
		 * HttpStatus.OK); else return new
		 * ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		 */
	}
	
	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH},
			value = "/item/{item_code:.+}", consumes = "application/json")
	public ResponseEntity<String> modify(
			@RequestBody BoardVO board,
			@PathVariable("item_code") String item_code){
		board.setItem_code(item_code);
		return service.modify(board)==1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@RequestMapping(value = "/getItemCode", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public List<String> getItemCode(){
		return service.getItemCode();
	}
}
