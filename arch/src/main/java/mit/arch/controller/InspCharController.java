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
import mit.arch.domain.InspCharVO;
import mit.arch.service.InspCharService;

@RestController
@Log4j
@AllArgsConstructor
public class InspCharController {
	
	private InspCharService service;
	
	@PostMapping(value="/insp_char",
			consumes = "application/json",
			produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> register(@RequestBody InspCharVO insp) {
	
		int insertCount = service.regiser(insp);
		log.info("등록 처리결과"+insertCount);
		
		return insertCount == 1
		? new ResponseEntity<>("success", HttpStatus.OK)
		:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping(value = "/insp_char/{insp_char}",
			produces = {MediaType.APPLICATION_JSON_UTF8_VALUE,MediaType.APPLICATION_XML_VALUE})
	public ResponseEntity<InspCharVO> get(@PathVariable("insp_char") String insp_char){
		return new ResponseEntity<>(service.get(insp_char), HttpStatus.OK);
	}
	
	@DeleteMapping(value = "/insp_char/{insp_char}", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(@PathVariable("insp_char") String insp_char){
		return service.remove(insp_char) == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH},
			value = "/insp_char/{insp_char}", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> modify(
			@RequestBody InspCharVO insp,
			@PathVariable("insp_char") String insp_char){
		insp.setInsp_char(insp_char);
		return service.modify(insp)==1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

}
