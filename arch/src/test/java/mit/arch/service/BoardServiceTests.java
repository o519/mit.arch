package mit.arch.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
import mit.arch.domain.BoardVO;
import mit.arch.domain.ItemInspCharVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {
	
	@Autowired
	private BoardService service;
	
	@Test
	public void testRegister() {
		BoardVO board = new BoardVO();
		board.setItem_code("item_code2");
//		board.setItem_name("item_name");
//		board.setPurch_user("purch_user");
//		board.setPurch_user_name("purch_user_name");
//		board.setPurch_dept("purch_dept");
//		board.setPurch_dept_name("purch_dept_name");
//		board.setVendor("vendor");
//		board.setVendor_name("vendor_name");
//		board.setIncome_insp_user("income_insp_user");
//		board.setCurrent_stock(10000);
//		board.setPurch_price(7000);
//		board.setInsp_f("insp_f");
//		board.setDeletion_f("deletion_f");
		
		service.register(board);
		
		log.info("생성된 아이템 코드: " + board.getItem_code());
	}
		
	@Test
	public void testGetList() {
		service.getList().forEach(board -> log.info(board));
	}
	
	@Test
	public void testGetItemCode() {
		service.getItemCode().forEach(board -> log.info(board));
	}
	
	@Test
	public void testGet() {
		log.info(service.get("item_code1"));
	}
	
	@Test
	public void testUpdate() {
		BoardVO board = service.get("item_code1");
		
		if(board == null) {
			return;
		}
		
		board.setItem_name("아이템 이름을 수정합니다");
		log.info("수정 결과: " + service.modify(board));
	}
	
	@Test
	public void testDelete() {
		log.info("삭제 결과" + service.remove("item_code3"));
	}

}
