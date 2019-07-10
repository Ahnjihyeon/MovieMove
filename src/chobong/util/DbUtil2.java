package chobong.util;
/** DB ������ ���� (1)�ε�, (2)����, (4) �ݱ� */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbUtil2 {
	// static ��� - ��ü ������ ���ÿ� ���� & main���� �� ����
	/** (1)�ε�  */ 
	static {
		try {
			Class.forName( DbProperty.DRIVER_NAME );
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	/** (2)����  */
	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(
							DbProperty.URL, DbProperty.USER, DbProperty.PASS);
	}
	/** (4) �ݱ� */ 
	public static void dbClose( Connection con, Statement stmt ) {
		try { // Null üũ ���ϸ�, Statement Null ���� �� �� ����
			if( stmt != null ) stmt.close();
			if( con != null ) con.close();
		} catch( Exception e ) {
			e.printStackTrace();
		}
	}
	/** (4) �ݱ� ( Select ���� ) */  
	public static void dbClose( Connection con, Statement stmt, ResultSet rs ) {
		try {
			if( rs != null ) rs.close();
			dbClose( con, stmt );
		} catch( Exception e ) {
			e.printStackTrace();
		}
	}
}
