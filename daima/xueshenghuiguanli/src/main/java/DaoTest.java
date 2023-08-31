package 人口普查系统;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.Test;

public class DaoTest {

	@Test
	public void test() throws SQLException {
		Dao dao=new Dao();
		System.out.print(dao.searchByName("2").size());
	}
}
