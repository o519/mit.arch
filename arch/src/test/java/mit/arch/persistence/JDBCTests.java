package mit.arch.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {
	
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@Test
	public void testConnection() {
		try {
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.9:1521:XE","arch","arch1234");
			log.info(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			fail("테스트 실패");
			fail(e.getMessage());
		}
	}
}
