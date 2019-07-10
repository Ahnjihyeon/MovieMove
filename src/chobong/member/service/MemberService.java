package chobong.member.service;

import java.sql.SQLException;

import chobong.movie.dao.MemberDAO;
import chobong.movie.dao.MemberDAOImpl;
import chobong.movie.dto.MemberDTO;

public class MemberService {
	private static MemberDAO memberDAO = new MemberDAOImpl();
	
	public static MemberDTO memberInfo(String memberId) {
		System.out.println(memberId);
		MemberDTO dto = memberDAO.memberInfo(memberId);
		return dto;
	}
	
	public static boolean idCheck(String memberId) {
		boolean result = memberDAO.idCheck(memberId);
		return result;
	}
	
	public static int insert(MemberDTO dto) throws SQLException{		
		int result = memberDAO.insert(dto);
		if(result == 0) throw new SQLException("�벑濡앸릺吏� �븡�븯�뒿�땲�떎");
		return result;			
	}
	public static MemberDTO login(String memberId, String memberPwd) throws SQLException{
		MemberDTO member = memberDAO.login(memberId, memberPwd);
		if(member==null) throw new SQLException("로그인오류");
		return member;
	}
}
