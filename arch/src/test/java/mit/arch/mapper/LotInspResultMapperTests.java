package mit.arch.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
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

}
