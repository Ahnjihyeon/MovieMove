package chobong.movie.service;

import java.sql.SQLException;

import chobong.movie.dao.MemberDAO;
import chobong.movie.dao.MemberDAOImpl;
import chobong.movie.dao.ReviewDAO;
import chobong.movie.dao.ReviewDAOImpl;
import chobong.movie.dto.MemberDTO;
import chobong.movie.dto.ReviewDTO;

public class MemberService {
	private static MemberDAO memberDAO = new MemberDAOImpl();
	
	
	public static MemberDTO memberInfo(String memberId) {
		MemberDTO dto = memberDAO.memberInfo(memberId);
		return dto;
	}
	
	public static boolean idCheck(String memberId) {
		boolean result = memberDAO.idCheck(memberId);
		return result;
	}
	
	public static int insert(MemberDTO dto) throws SQLException{		
		int result = memberDAO.insert(dto);
		if(result == 0) throw new SQLException("가입 오류");
		return result;			
	}
	public static MemberDTO login(String memberId, String memberPwd) throws SQLException{
		MemberDTO member = memberDAO.login(memberId, memberPwd);
		if(member==null) throw new SQLException("로그인오류");
		return member;
	}
	public static int delete(String memberId) throws SQLException{
		int result = memberDAO.delete(memberId);
		return result;
	}
	public static int update(MemberDTO dto) throws SQLException{
		int result = memberDAO.update(dto);
		return result;
	}
	public static ReviewDTO memberReview(String memberId) throws SQLException{
		System.out.println("리뷰출력서비스");
		ReviewDTO dto = memberDAO.memberReview(memberId);
		return dto;	
	}
}
