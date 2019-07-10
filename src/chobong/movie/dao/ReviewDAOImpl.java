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
	

	/*	private String reviewId;
	private String memberId;
	private String movieCode;
	private String reviewSubject;
	private String reviewContent;
	private String reviewWriteday;
	private int reviewStarPoint;
	private int reviewCount;
	private String reviewPwd;*/
	@Override
	public List<MovieDTO> selectBykeySearch(String keyField, String keyWord) {
		return null;
	}

	@Override
	public List<ReviewDTO> selectAll(String movieCode) throws SQLException {
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

	@Override
	public ReviewDTO selectByReviewNum(String reviewNum) throws SQLException {
		return null;
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
	public int delete(String reviewNum, String password) throws SQLException {
		return 0;
	}

	@Override
	public int update(ReviewDTO movieDTO, String password) throws SQLException {
		return 0;
	}

}
