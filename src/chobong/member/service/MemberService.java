package chobong.member.service;

import java.sql.SQLException;

import chobong.movie.dao.MemberDAO;
import chobong.movie.dao.MemberDAOImpl;
import chobong.movie.dto.MemberDTO;

public class MemberService {
	private static MemberDAO memberDAO = new MemberDAOImpl();
	
	public static int insert(MemberDTO dto) throws SQLException{
		System.out.println("���� ȣ��");
		int result = memberDAO.insert(dto);
		if(result == 0) throw new SQLException("��ϵ��� �ʾҽ��ϴ�");
		return result;
	}
}
