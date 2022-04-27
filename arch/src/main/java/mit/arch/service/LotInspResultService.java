package mit.arch.service;

import java.util.List;

import mit.arch.domain.InspResultVO;
import mit.arch.domain.LotVO;

public interface LotInspResultService {
	
	// Lot 등록
	public int registerLot(LotVO lot);
	
	//Lot 삭제
	public int removeLot(String lot_no);
	
	//Lot 수정
	public int modifyLot(LotVO lot);
	
	//Lot 리스트 조회
	public List<LotVO> getListLot();
	
	//sample 리스트 조회
	public List<InspResultVO> getSampleList(String lot_no);
	
	//검사결과(insp_result)에 등록되어 있는지 카운트로 확인
	public int lotCnt(String lot_no);
	
	public int insertInspResult(InspResultVO result);
	
	public List<InspResultVO> getInspResult(String lot_no);
	
	public int updateInspResult(InspResultVO result);
	
	public int resultCnt(String lot_no, String insp_char, Integer sample_no);

}
