package mit.arch.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

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
	
	//sample 리스트 조회
	public List<InspResultVO> getSampleList(String lot_no);
	
	public int lotCnt(String lot_no);
	
	public int resultCnt(@Param("lot_no") String lot_no, @Param("insp_char") String insp_char,@Param("sample_no") Integer sample_no);
	
	public int insertInspResult(InspResultVO result);
	
	public List<InspResultVO> getInspResult(String lot_no);
	
	public int updateInspResult(InspResultVO result);
}
