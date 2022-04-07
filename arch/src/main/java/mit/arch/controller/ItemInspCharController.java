package mit.arch.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.arch.domain.ItemInspCharVO;
import mit.arch.service.ItemInspCharService;

@RestController
@Log4j
@AllArgsConstructor
public class ItemInspCharController {
	
	private ItemInspCharService service;
	
	@PostMapping(value="/item_insp_char/add",
			consumes = "application/json",
			produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> insertItemInspChar(@RequestBody ItemInspCharVO itemInspChar) {
		
		int insertCount = service.insertItemInspChar(itemInspChar);
		log.info("등록 처리결과"+insertCount);
		
		return insertCount == 1? new ResponseEntity<>("success", HttpStatus.OK):new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@DeleteMapping(value = "/item_insp_char/{item_code}/{insp_char}", produces = "text/plain; charset=UTF-8")
	public ResponseEntity<String> delete(@PathVariable("item_code") String item_code, @PathVariable("insp_char") String insp_char){
		//log.info(item_code);
		//log.info(insp_char);
		return service.delete(item_code, insp_char) == 1
				? new ResponseEntity<>("삭제성공 - [" + item_code + ":" + insp_char + "]" , HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@DeleteMapping(value = "/item_insp_char/del", produces = "text/plain; charset=UTF-8")
	public ResponseEntity<String> delete(@RequestBody String[] data){
		//log.info(data.length);
		
		String a = "삭제성공 - ";
		String b = "삭제실패 - "; 
				
		for(int i=0; i<data.length; i+=2) {
			if(service.delete(data[i], data[i+1]) == 1)
				a += "[" + (data[i] + ":" + data[i+1] + "], ");
			else
				b += "[" + (data[i] + ":" + data[i+1] + "], ");
		}
		
		a = a.replaceAll("[\\s,]+$", "");
		b = b.replaceAll("[\\s,]+$", "");
		
		//log.info("아아아아아 2번" + data[0]);
		//정상적으로 작동되었는지 확인
		
		if(a.equals("삭제성공 -"))
			return new ResponseEntity<>(b, HttpStatus.OK);
		else if(b.equals("삭제실패 -"))
			return new ResponseEntity<>(a, HttpStatus.OK);
		else
			return new ResponseEntity<>(a + "\n" + b, HttpStatus.OK);
		
		//return service.delete(data[0], data[1]) == 1? new ResponseEntity<>("success", HttpStatus.OK): new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

}
