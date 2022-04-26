package mit.arch.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.arch.domain.InspResultVO;
import mit.arch.domain.LotVO;
import mit.arch.mapper.LotInspResultMapper;

@Log4j
@Service
@AllArgsConstructor
public class LotInspResultServiceImpl implements LotInspResultService {
	
	private LotInspResultMapper mapper;

	@Override
	public int registerLot(LotVO lot) {
		return mapper.insertLot(lot);
	}

	@Override
	public int removeLot(String lot_no) {
		return mapper.deleteLot(lot_no);
	}

	@Override
	public int modifyLot(LotVO lot) {
		return mapper.updateLot(lot);
	}

	@Override
	public List<LotVO> getListLot() {
		return mapper.getLotList();
	}

//	@Override
//	public List<InspResultVO> getSampleList(String lot_no) {
//		return mapper.getSampleList(lot_no);
//	}
	
	@Override
	public List<InspResultVO> getSampleList(String lot_no) {
		//1.검사결과 등록여부 확인
		log.info(mapper.lotCnt(lot_no));
		if(mapper.lotCnt(lot_no) == 0) {
		//2-1. 등록이 안되있으며 기존처럼 등록화면 여부 보내고
			log.info(mapper.getSampleList(lot_no));
			return mapper.getSampleList(lot_no);
		}else {
		//2-2. 등록이 되있으면 다가져와서 보내고
			log.info(mapper.getInspResult(lot_no));
			return mapper.getInspResult(lot_no);
		}
	}

	@Override
	public int lotCnt(String lot_no) {
		//log.info(mapper.lotCnt(lot_no));
		return mapper.lotCnt(lot_no);
	}

//	@Override
//	public List<InspResultVO> lotCnt(String lot_no) {
//		//1.검사결과 등록여부 확인
//		if(mapper.lotCnt(lot_no) == 0) {
//		//2-1. 등록이 안되있으며 기존처럼 등록화면 여부 보내고
//			mapper.getSampleList(lot_no);
//		}else {
//		//2-2. 등록이 되있으면 다가져와서 보내고
//			mapper.getInspResult(lot_no);
//		}
//	}
	
	@Override
	public int insertInspResult(InspResultVO result) {
		return mapper.insertInspResult(result);
	}

	@Override
	public List<InspResultVO> getInspResult(String lot_no) {
		return mapper.getInspResult(lot_no);
	}
}
