package mit.arch.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import mit.arch.domain.BoardVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(board -> log.info(board));
	}
	
	@Test
	public void testInsert() {
		
		BoardVO board = new BoardVO();
		board.setItem_code("item_code3");
		board.setItem_name("item_name");
		board.setPurch_user("purch_user");
		board.setPurch_user_name("purch_user_name");
		board.setPurch_dept("purch_dept");
		board.setPurch_dept_name("purch_dept_name");
		board.setVendor("vendor");
		board.setVendor_name("vendor_name");
		board.setIncome_insp_user("income_insp_user");
		board.setCurrent_stock(10000);
		board.setPurch_price(7000);
		board.setInsp_f("insp_f");
		board.setDeletion_f("deletion_f");
		
		mapper.insert(board);
		
		log.info(board);
		
	}
	
	@Test
	public void testInsertSelectKey() {
		
		BoardVO board = new BoardVO();
		board.setItem_code("item_code select key");
		board.setItem_name("item_name");
		board.setPurch_user("purch_user");
		board.setPurch_user_name("purch_user_name");
		board.setPurch_dept("purch_dept");
		board.setPurch_dept_name("purch_dept_name");
		board.setVendor("vendor");
		board.setVendor_name("vendor_name");
		board.setIncome_insp_user("income_insp_user");
		board.setCurrent_stock(10000);
		board.setPurch_price(7000);
		board.setInsp_f("insp_f");
		board.setDeletion_f("deletion_f");
		
		mapper.insertSelectKey(board);
		
		log.info(board);
	}
	
	@Test
	public void testRead() {
		BoardVO board = mapper.read("item_code2");
		
		log.info(board);
	}
	
	@Test
	public void testDelete() {
		log.info("Delete Item_Code" + mapper.delete("item_code"));
	}
	
	@Test
	public void testUpdate() {
		BoardVO board = new BoardVO();
		board.setItem_code("item_code2");
		board.setItem_name("수정");
		board.setPurch_user("수정");
		board.setPurch_user_name("수정");
		board.setPurch_dept("수정");
		board.setPurch_dept_name("수정");
		board.setVendor("수정");
		board.setVendor_name("수정");
		board.setIncome_insp_user("수정");
		board.setCurrent_stock(10000);
		board.setPurch_price(7000);
		board.setInsp_f("수정");
		board.setDeletion_f("수정");
		
		int count = mapper.update(board);
		log.info("업데이트 수" + count);
		
	}

}
