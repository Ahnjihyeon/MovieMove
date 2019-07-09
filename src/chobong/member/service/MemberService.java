package chobong.member.service;

import java.sql.SQLException;

import chobong.movie.dao.MemberDAO;
import chobong.movie.dao.MemberDAOImpl;
import chobong.movie.dto.MemberDTO;

public class MemberService {
	private static MemberDAO memberDAO = new MemberDAOImpl();
	
	public static int insert(MemberDTO dto) throws SQLException{
		System.out.println("서비스 호출");
		int result = memberDAO.insert(dto);
		if(result == 0) throw new SQLException("등록되지 않았습니다");
		return result;
	}
}
