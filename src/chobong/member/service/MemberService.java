package chobong.member.service;

import java.sql.SQLException;

import chobong.movie.dao.MemberDAO;
import chobong.movie.dao.MemberDAOImpl;
import chobong.movie.dto.MemberDTO;

public class MemberService {
	private static MemberDAO memberDAO = new MemberDAOImpl();
	
	public static int insert(MemberDTO dto) throws SQLException{
		int result = memberDAO.insert(dto);
		if(result == 0) throw new SQLException("등록되지 않았습니다");
		return result;
	}
	public static int login(String memberId, String memberPwd) throws SQLException{
		System.out.println("로그인 service 호출");
		int result = memberDAO.login(memberId, memberPwd);
		if(result ==0) throw new SQLException("로그인 실패");
		return result;
	}
}
