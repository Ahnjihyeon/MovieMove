package chobong.movie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import chobong.movie.dto.MovieDTO;
import chobong.movie.dto.ReviewDTO;
import chobong.util.DbUtil;

public class ReviewDAOImpl implements ReviewDAO {
	
	// 리뷰 게시판  --- 전체 리뷰 리스트
	@Override
	public List<ReviewDTO> selectAll() throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql="Select * from review order by review_writeday desc";
		List<ReviewDTO> list = new ArrayList<>();
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			rs = ps.executeQuery();
			while( rs.next() ) {
				ReviewDTO reviewDTO = new ReviewDTO(rs.getString(1), rs.getString(2), rs.getString(3),
									rs.getString(4), rs.getString(5), rs.getString(6), 
									rs.getInt(7), rs.getInt(8), rs.getString(9) );
				list.add(reviewDTO);
			}
		} finally {
			DbUtil.dbClose( rs, ps, con);
		}
		return list;
	}
	// 특정 영화 리스트
	@Override
	public List<ReviewDTO> selectAllByMovieTitle(String movieCode) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql="Select * from review where movie_code=? order by review_writeday desc";
		List<ReviewDTO> list = new ArrayList<>();
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, movieCode );
			
			rs = ps.executeQuery();
			while( rs.next() ) {
				ReviewDTO reviewDTO = new ReviewDTO(rs.getString(1), rs.getString(2), rs.getString(3),
									rs.getString(4), rs.getString(5), rs.getString(6), 
									rs.getInt(7), rs.getInt(8), rs.getString(9) );
				list.add(reviewDTO);
			}
		} finally {
			DbUtil.dbClose( rs, ps, con);
		}
		return list;
	}
	// ----수정됬음----
	@Override
	public ReviewDTO selectByReviewId(String reviewId) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql="Select * from review where review_id=? order by review_writeday desc";//11
		ReviewDTO reviewDTO =  null;
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString( 1, reviewId );
			
			rs = ps.executeQuery();
			if( rs.next() ) {
				// 가저올값들만
				reviewDTO = new ReviewDTO(rs.getString(1), rs.getString(2), rs.getString(3),
									rs.getString(4), rs.getString(5), rs.getString(6), 
									rs.getInt(7), rs.getInt(8), rs.getString(9) );
			}
			//System.out.println("DAO 성공 = " + reviewDTO );
		} finally {
			DbUtil.dbClose( rs, ps, con );
		}
		return reviewDTO;
	}
	
	@Override
	public int increamentByReadnum(String ReviewNum) throws SQLException {
		return 0;
	}

	@Override
	public List<ReviewDTO> selectBykeyBest(String keyField) {
		return null;
	}
	// insert into review values( movie_seq.nextval,?,?,?,?,sysdate,?,?,?);
	@Override
	public int insert(ReviewDTO reviewDTO) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		
		String sql="insert into review values( movie_seq.nextval,?,?,?,?,sysdate,?,0,?)";
		int result = 0;
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			ps.setString(1, reviewDTO.getMemberId() );
			ps.setString(2, reviewDTO.getMovieCode() );
			ps.setString(3, reviewDTO.getReviewSubject() );
			ps.setString(4, reviewDTO.getReviewContent());
			
			ps.setInt(5, reviewDTO.getReviewStarPoint() );
			ps.setString(6, reviewDTO.getReviewPwd() );
			
			result = ps.executeUpdate();
		} finally {
			DbUtil.dbClose(ps, con);
		}
		return result;
	}

	@Override
	public int delete(String reviewId, String password) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		
		String sql="delete from review where review_id=? and review_pwd=?";
		System.out.println("삭제 DAO = "+reviewId +" :> " + password);
		int result = 0;
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			ps.setString(1, reviewId );
			ps.setString(2, password );
			
			result = ps.executeUpdate();
			System.out.println("삭제 DAO 결과= " + result );
		} finally {
			DbUtil.dbClose(ps, con);
		}
		return result;
	}
	
	@Override
	public int update(ReviewDTO upReviewDTO, String password) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		System.out.println(  "업데이트 DAO = " + upReviewDTO.getReviewId() );
		String sql="Update review Set review_subject =?,review_starPoint=?,review_content=? where review_id=? and review_pwd=?";
		int result = 0;
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			ps.setString(1, upReviewDTO.getReviewSubject() );
			ps.setInt(2, upReviewDTO.getReviewStarPoint() );
			ps.setString(3, upReviewDTO.getReviewContent() );
			
			ps.setString(4, upReviewDTO.getReviewId() );
			ps.setString(5, password );
			
			result = ps.executeUpdate();
			System.out.println("업데이트 DAO = " + result );
		} finally {
			DbUtil.dbClose( ps, con);
		}
		return result;
	}

}
