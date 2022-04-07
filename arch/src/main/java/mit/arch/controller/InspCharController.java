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
import mit.arch.domain.InspCharVO;
import mit.arch.service.InspCharService;

@RestController
@Log4j
@AllArgsConstructor
public class InspCharController {
	
	private InspCharService service;
	
	@PostMapping(value="/insp_char",
			consumes = "application/json",
			produces = "text/plain; charset=UTF-8")
	public ResponseEntity<String> register(@RequestBody InspCharVO insp) {
		int insertCount = service.regiser(insp);
		//log.info("등록 처리결과"+insertCount);
		
		
		return insertCount == 1
		? new ResponseEntity<>("등록성공 - " + insp.getInsp_char(), HttpStatus.OK)
		:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping(value = "/insp_char/{insp_char:.+}",
			produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<InspCharVO> get(@PathVariable("insp_char") String insp_char){
		return new ResponseEntity<>(service.get(insp_char), HttpStatus.OK);
	}
	
	@DeleteMapping(value = "/insp_char/{insp_char:.+}", produces = "text/plain; charset=UTF-8")
	public ResponseEntity<String> remove(@PathVariable("insp_char") String insp_char){
		//log.info("삭제용 data:"+insp_char);
		//return service.remove(insp_char) == 1? new ResponseEntity<>("success", HttpStatus.OK): new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		if(service.remove(insp_char) == 1)
			return new ResponseEntity<>("삭제성공 - " + insp_char, HttpStatus.OK);
		else if(service.remove(insp_char) == 2)
			return new ResponseEntity<>("삭제불가 - 등록된 검사항목(" + insp_char +")", HttpStatus.OK);
		else
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@DeleteMapping(value = "/insp_char/del", produces = "text/plain; charset=UTF-8")
	public ResponseEntity<String> remove(@RequestBody String[] insp_char){
		//log.info(insp_char[1]);
		String a = "삭제성공 - ";
		String b = "삭제불가 - ";
		
		//삭제 가능한 코드만 삭제처리
		//삭제된 코드와 처리가 안된 코드를 알려줌(알림창) 내용을 문자열로 전송
		//삭제성공 - code1, code2
		//삭제불가 - 등록된 아이템코드(code3, code4)
		for(String i:insp_char) {
			if(service.remove(i) == 1)
				a += (i+", ");
			else if(service.remove(i) == 2)
				b += (i+", ");
		}
		a = a.replaceAll("[\\s,]+$", "");
		b = b.replaceAll("[\\s,]+$", "");
		
		if(a.equals("삭제성공 -"))
			return new ResponseEntity<>(b, HttpStatus.OK);
		else if(b.equals("삭제불가 -"))
			return new ResponseEntity<>(a, HttpStatus.OK);
		else
			return new ResponseEntity<>(a + "\n" + b, HttpStatus.OK);
	}
	
	
	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH},
			value = "/insp_char/{insp_char:.+}", consumes = "application/json")
	public ResponseEntity<String> modify(@RequestBody InspCharVO insp){
		return service.modify(insp)==1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@RequestMapping(value = "/getInspChar", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public List<String> getInspChar(){
		return service.getInspChar();
	}

}
