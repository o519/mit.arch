package mit.arch.mapper;

import java.util.List;

import mit.arch.domain.InspResultVO;
import mit.arch.domain.LotVO;

public interface LotInspResultMapper {
	
	//Lot 등록
	public int insertLot(LotVO lot);
	
	//Lot 삭제
	public int deleteLot(String lot_no);
	
	//Lot 수정
	public int updateLot(LotVO lot);

	//Lot 리스트 조회
	public List<LotVO> getLotList();
	
	//insp_result 등록
	public int insertResult(InspResultVO result);
	
	//insp_result 삭제
	public int deleteResult(String lot_no);
	
	//insp_result 수정
	public int updateResult(InspResultVO result);
	
	//insp_result 리스트 조회
	public List<InspResultVO> getResultList();
	
}
