package chobong.util;
/** 설정
 	 DB에 관련된 설정 정보를 상수Field로 관리하는 interface 
 	 ( 계정 문제 생기면, 여기만 고치면 됨 ) */
public interface DbProperty {
	public static final String DRIVER_NAME="oracle.jdbc.driver.OracleDriver";
	public static final String URL="jdbc:oracle:thin:@34.97.135.31:1521:XE";   //"jdbc:oracle:thin:@34.97.135.31:1521:XE";
	public static final String USER="movie";
	public static final String PASS="move";
}
