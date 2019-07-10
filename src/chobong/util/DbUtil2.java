package chobong.util;
/** DB 연동을 위한 (1)로드, (2)연결, (4) 닫기 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbUtil2 {
	// static 블록 - 객체 생성과 동시에 생성 & main시작 전 실행
	/** (1)로드  */ 
	static {
		try {
			Class.forName( DbProperty.DRIVER_NAME );
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	/** (2)연결  */
	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(
							DbProperty.URL, DbProperty.USER, DbProperty.PASS);
	}
	/** (4) 닫기 */ 
	public static void dbClose( Connection con, Statement stmt ) {
		try { // Null 체크 안하면, Statement Null 예외 뜰 수 있음
			if( stmt != null ) stmt.close();
			if( con != null ) con.close();
		} catch( Exception e ) {
			e.printStackTrace();
		}
	}
	/** (4) 닫기 ( Select 전용 ) */  
	public static void dbClose( Connection con, Statement stmt, ResultSet rs ) {
		try {
			if( rs != null ) rs.close();
			dbClose( con, stmt );
		} catch( Exception e ) {
			e.printStackTrace();
		}
	}
}
