package mit.arch.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.arch.domain.LotVO;
import mit.arch.service.LotInspResultService;

@RestController
@Log4j
@AllArgsConstructor
public class LotInspResultController {
	
	private LotInspResultService service;
	
	@PostMapping(value = "/Lot/add", consumes = "application/json", produces = "text/plain; charset=UTF-8")
	public ResponseEntity<String> insertLot(@RequestBody LotVO lot) {
		int cnt = service.registerLot(lot);
		return cnt == 1 ? new ResponseEntity<>("Lot 생성완료", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR); 
	}
	
	@DeleteMapping(value = "/Lot/del", produces = "text/plain; charset=UTF-8")
	public ResponseEntity<String> deleteLot(@RequestBody String[] lot_no) {
		
		String a = "삭제성공 - ";
		
		for(String i:lot_no) {
			service.removeLot(i);
			a += (i+", ");
		}
		a = a.replaceAll("[\\s,]+$", "");
		
		return new ResponseEntity<>(a, HttpStatus.OK);
	}

}
