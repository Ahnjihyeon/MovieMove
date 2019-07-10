package chobong.movie.service;
//tmwkd
import java.sql.SQLException;
import java.util.List;

import chobong.movie.dao.ReviewDAO;
import chobong.movie.dao.ReviewDAOImpl;
import chobong.movie.dto.CommentDTO;
import chobong.movie.dto.MovieDTO;
import chobong.movie.dto.ReviewDTO;

public class ReviewService {
	public static ReviewDAO reviewDAO = new ReviewDAOImpl();
	
	 // 영화
	/** 영화 제목검색   */
	public static List<MovieDTO> selectBykeySearch( String keyField , String keyWord ) {
		
		return null;
	}
	  
	  
	  // 게시판  	  - 게시판 번호는 시퀀스라서 중복체크x
	/** 영화리뷰 전체 검색 */
	public static  List<ReviewDTO> selectAll( String movieCode ) throws SQLException {
		List<ReviewDTO> list = reviewDAO.selectAll(movieCode);
		return list;
	}
	
	
	  /** 게시글번호에 해당하는 레코드 검색 ( 상세페이지 )  */
	public static  ReviewDTO selectByReviewSubject(String reviewSubject) throws SQLException {
		ReviewDTO reviewDTO = reviewDAO.selectByReviewSubject(reviewSubject);
		return reviewDTO;
	}
	  
	  
	  /** 게시판 조회수를 증가하는 기능
	   *  update Review set review_count = review_count + 1 where review_id=? */
	public static int increamentByReadnum(String ReviewNum) throws SQLException {
		return 0;
	}
		  
	/** 
	* 조회순,인기순(평점), 최신순
	select * from Review order by review_count desc  // 조회순 -- 높은순
	select * from Review order by review_starPoint desc  // 평점순 -- 높은순
	select * from Review order by review_writeday desc  // 올린순 -- 최신순    */
	public static List<ReviewDTO> selectBykeyBest( String keyField ) {
		return null;
	}
		  
		  
	/**
	 * 레코드 삽입
	 * @return : 1-삽입성공 , 0 - 삽입실패
	 * */
	public static int insert( ReviewDTO reviewDTO ) throws SQLException {
		int result = reviewDAO.insert(reviewDTO);
		if( result == 0 ) throw new SQLException("등록되지 않았습니다.");
		return result;
	}
	  
	  /**
	   * 게시글아이디에 해당하는 레코드 삭제
	   * @return : 1-삭제성공 , 0 - 삭제실패
	   * */
	public static int delete(String reviewId, String password ) throws SQLException {
		int result = reviewDAO.delete(reviewId, password);
		if( result == 0 ) throw new SQLException("게시글을 삭제할 수 없습니다.");
		return result;
	}
	  
	   /**
	    * 게시글번호에 해당하는 레코드 수정 
	    * @return : 1-수정성공 , 0 - 수정실패
	    * */
	public static int update(ReviewDTO movieDTO, String password ) throws SQLException {
		return 0;
	}
	
	

}
