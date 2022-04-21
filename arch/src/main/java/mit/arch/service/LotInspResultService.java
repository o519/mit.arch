package mit.arch.service;

import java.util.List;

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

}
