package chobong.movie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import chobong.movie.dto.MemberDTO;
import chobong.util.DbUtil;

public class MemberDAOImpl implements MemberDAO {

	@Override
	public boolean idCheck(String memberId) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		boolean result = false;
		try {
			con = DbUtil.getConnection();					
			String sql = "select member_id from member where member_id = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, memberId);			
			rs = ps.executeQuery();
			if(rs.next()) {
				result = true;
			}			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbUtil.dbClose(rs, ps, con);
		}
		return result;
	
	}
	public List<MemberDTO> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int insert(MemberDTO memberDTO) {
		int result = 0;
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = DbUtil.getConnection();		
			String sql = "insert into member(member_id,member_pwd,member_email, member_name,member_nickname,member_age,"
					+ "member_date) values(?,?,?,?,?,?, sysdate)";
			ps = con.prepareStatement(sql);
			ps.setString(1, memberDTO.getMemberId());
			ps.setString(2, memberDTO.getMemberPwd());
			ps.setString(3, memberDTO.getMemberEmail());
			ps.setString(4, memberDTO.getMemberName());
			ps.setString(5, memberDTO.getMemberNickname());
			ps.setInt(6, memberDTO.getMemberAge());
		
			result = ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbUtil.dbClose(ps, con);
		}
		return result;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberDTO login(String memberId, String memberPwd) {
		int result = 0;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		MemberDTO dto = new MemberDTO();
		try {
			con = DbUtil.getConnection();		
			String sql = "select * from member where member_Id = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, memberId);	
			rs = ps.executeQuery();
			if(rs.next()) {
				if(rs.getString("member_pwd").equals(memberPwd)) {					
					dto.setMemberId(rs.getString(1));
					dto.setMemberPwd(rs.getString(2));
					dto.setMemberEmail(rs.getString(3));
					dto.setMemberName(rs.getString(4));
					dto.setMemberNickname(rs.getString(5));
					dto.setMemberAge(rs.getInt(6));
					dto.setMemberDate(rs.getString(7));						
				}
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbUtil.dbClose(rs, ps, con);
		}
		return dto;
	}

	@Override
	public MemberDTO memberInfo(String memberId) {
		System.out.println("memberinfoµé¾î¿È");
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		MemberDTO dto = null;
		try {
			con = DbUtil.getConnection();		
			String sql = "select * from member where member_Id = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, memberId);	
			rs = ps.executeQuery();
			if(rs.next())
			dto = new MemberDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getString(7));
			System.out.println("dtoÀúÀå");
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbUtil.dbClose(rs, ps, con);
		}
		return dto;
	}

}
