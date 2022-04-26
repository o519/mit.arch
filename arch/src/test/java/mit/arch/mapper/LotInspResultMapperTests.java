package mit.arch.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import mit.arch.domain.InspResultVO;
import mit.arch.domain.LotVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class LotInspResultMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private LotInspResultMapper mapper;
	
	@Test
	public void testGetLotList() {
		mapper.getLotList().forEach(lot -> log.info(lot));
	}
	
	@Test
	public void testGetSampleList() {
		//mapper.getSampleList("L20220420-0032").forEach(sample -> log.info(sample));
		mapper.getSampleList("L20220425-0009").forEach(sample -> log.info(sample));
	}
	
	@Test
	public void testDeleteLot() {
		log.info("삭제 LOT_NO : " + mapper.deleteLot("L20220419-0001"));
	}
	
	@Test
	public void testInsertLot() {
		LotVO lot = new LotVO();
	//	lot.setCreate_user("mit");
	//	lot.setYn_f("합격");
		lot.setItem_code("item_code02");
	//	lot.setLot_size(33);
		
		mapper.insertLot(lot);
		log.info(lot);
	}
	
	@Test
	public void testUpdateLot() {
		LotVO lot = new LotVO();
		lot.setLot_no("L20220420-0021");
		lot.setItem_code("item_code01");
		
		int count = mapper.updateLot(lot);
		log.info("업데이트 수 : " + count);
		
	}
	
	@Test
	public void testLotCnt() {
		mapper.lotCnt("L20220425-0007");
	}
	
	@Test
	public void testInsertInspResult() {
		InspResultVO result = new InspResultVO();
		result.setLot_no("L20220425-0009");
		result.setItem_code("item_code01");
		result.setInsp_char("insp_char01");
		result.setInsp_char_name("검사명");
		result.setSample_no(2);
		result.setInsp_result(23.8);
		result.setYn_f("합격");
		log.info(result);
		mapper.insertInspResult(result);
	}

	@Test
	public void testGetInspResult() {
		mapper.getInspResult("L20220425-0009").forEach(result -> log.info(result));
	}
	
}
