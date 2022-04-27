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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.arch.domain.InspResultVO;
import mit.arch.domain.LotVO;
import mit.arch.service.LotInspResultService;

@RestController
@Log4j
@AllArgsConstructor
public class LotInspResultController {
	
	private LotInspResultService service;
	
//	@GetMapping(value = "/lotInspResult/{lot_no}")
//	public void sampleList(@PathVariable("lot_no") String lot_no) {
//		log.info(lot_no);
//		service.getSampleList(lot_no);
//	}
	
	//순차 insert
	@PostMapping(value = "/lotInspResult/add", consumes = "application/json", produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> insertInspResult(@RequestBody List<InspResultVO> result) {
		for(InspResultVO temp:result) {
			if(service.resultCnt(temp.getLot_no(), temp.getInsp_char(), temp.getSample_no()) == 0) {
				//log.info(temp);
				//log.info("저장");
				service.insertInspResult(temp);
			}else {
				//log.info(temp);
				//log.info("수정");
				service.updateInspResult(temp);
			}
			//log.info(temp);
		}
		//int insertCnt = service.insertInspResult(result);
		//log.info("등록결과: " + insertCnt);
		//return insertCnt == 1? new ResponseEntity<>("success", HttpStatus.OK):new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		return null;
	}
	
//	//다중 insert
//	@PostMapping(value = "/lotInspResult/add", consumes = "application/json", produces = { MediaType.TEXT_PLAIN_VALUE })
//	public ResponseEntity<String> insertInspResult(@RequestBody List<InspResultVO> result) {
//			
//		for(InspResultVO temp:result) {
//			if(service.lotCnt(temp.getLot_no()) == 0) {
//				service.insertInspResult(temp);
//			}else {
//				service.updateInspResult(temp);
//			}
//			//log.info(temp);
//		}
//		//int insertCnt = service.insertInspResult(result);
//		//log.info("등록결과: " + insertCnt);
//		//return insertCnt == 1? new ResponseEntity<>("success", HttpStatus.OK):new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
//		return null;
//	}
//	
	
	
	@GetMapping(value = "/lotInspResult/{lot_no}")
	public List<InspResultVO> sampleList(@PathVariable("lot_no") String lot_no) {
		log.info(lot_no);
		return service.getSampleList(lot_no);
	}
	
	
//	@PostMapping(value = "sampleList")
//	private void sample (@RequestBody String lot_no) {
//		service.getSampleList(lot_no);
//	}
	
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
