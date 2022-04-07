package mit.arch.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class InspCharServiceTests {
	
	@Autowired
	private InspCharService service;
	
	@Test
	public void testGetList() {
		service.getList().forEach(insp -> log.info(insp));
	}
	
	@Test
	public void testGet() {
		log.info(service.get("insp_char02"));
	}

}
