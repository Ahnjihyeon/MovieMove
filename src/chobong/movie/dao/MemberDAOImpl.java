package chobong.movie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import chobong.movie.dto.MemberDTO;
import chobong.util.DbUtil;

public class MemberDAOImpl implements MemberDAO {

	@Override
	public List<MemberDTO> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberDTO selectById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean idCheck(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int insert(MemberDTO memberDTO) {
		System.out.println("insert Impl»£√‚");
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

}
