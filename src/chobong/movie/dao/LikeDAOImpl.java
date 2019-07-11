package chobong.movie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import chobong.util.DbUtil;

public class LikeDAOImpl implements LikeDAO {

	public int likeDo(String memberId, String reviewId) {
		int result = 0;
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = DbUtil.getConnection();
			if(likeCheck(memberId, reviewId)) { // 중복일경우엔 delete table
				String sql = "delete from likecheck where member_id = ? and review_id = ?";
				ps = con.prepareStatement(sql);
				ps.setString(1, memberId);
				ps.setString(2, reviewId);
				
				result = ps.executeUpdate();
				System.out.println("좋아요취소");
			}else { //중복이 아닐경우엔 insert table
				String sql = "insert into likecheck values(?, ?, 1)";
				ps = con.prepareStatement(sql);
				ps.setString(1, memberId);
				ps.setString(2, reviewId);
				
				result = ps.executeUpdate();
				System.out.println("좋아요+1");
			}
						
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbUtil.dbClose(ps, con);
		}
		return result;
	}


	@Override
	public boolean likeCheck(String memberId, String reviewId) {
		System.out.println("좋아요 중복체크 impl");
		boolean likeCheck = false;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;		
		try {
			con = DbUtil.getConnection();					
			String sql = "select * from likecheck where member_id = ? and review_id = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, memberId);
			ps.setString(2, reviewId);
			rs = ps.executeQuery();
			if(rs.next()) {
				likeCheck = true; // 중복이다.
			}			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbUtil.dbClose(rs, ps, con);
		}
		return likeCheck;
	}


	@Override
	public int likeCount(String reviewId) {
		int sum = 0;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = DbUtil.getConnection();					
			String sql = "select sum(likecheck_count) from likecheck where review_id = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, reviewId);
			rs = ps.executeQuery();
			if(rs.next()) {
				sum = Integer.parseInt(rs.getString(1));
			}else {
				sum = 0;
			}
			System.out.println("좋아요 총 갯수" + sum);
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbUtil.dbClose(rs, ps, con);
		}
		return sum;
	}

}
