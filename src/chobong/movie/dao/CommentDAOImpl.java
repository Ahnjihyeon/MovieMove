package chobong.movie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import chobong.movie.dto.CommentDTO;
import chobong.util.DbUtil;

public class CommentDAOImpl implements CommentDAO {

	@Override
	public int insertComment(CommentDTO commentDTO) {
		int result = 0;
		Connection con = null;
		PreparedStatement ps = null;
		try {
			System.out.println("insertImpl");
			con = DbUtil.getConnection();		
			String sql = "insert into comments values(comment_seq.nextval, ?, ?, sysdate, ?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, commentDTO.getMemberId());
			ps.setString(2, commentDTO.getCommentContent());
			ps.setString(3, commentDTO.getCommentBoard());
			
			result = ps.executeUpdate();
			
			System.out.println("insertImpl, result = " + result);
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbUtil.dbClose(ps, con);
		}
		return result;
	}
	@Override
	public List<CommentDTO> selectComment(String commentBoard) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<CommentDTO> list = new ArrayList<>();
		String sql="Select comment_number,member_id,comment_content,comment_date from comments where comment_board=? order by comment_date desc";//11
		CommentDTO dto =  null;
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, commentBoard);
			
			rs = ps.executeQuery();
			while(rs.next()) {
			
				dto = new CommentDTO(rs.getString(1), rs.getString(2), rs.getString(3),rs.getString(4));
				list.add(dto);
			}
		} finally {
			DbUtil.dbClose( rs, ps, con );
		}
		
		return list;
	}
	@Override
	public int deleteComment(String commentNum) throws SQLException {
		int result = 0;
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = DbUtil.getConnection();		
			String sql = "delete from comments where comment_number = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, commentNum);
			System.out.println("commentNum = " + commentNum);
			
			result = ps.executeUpdate();
			System.out.println("delete impl result = " + result);
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbUtil.dbClose(ps, con);
		}
		
		return result;
	}

}
