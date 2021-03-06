package chobong.movie.dao;

import java.sql.SQLException;
import java.util.List;

import chobong.movie.dto.CommentDTO;
import chobong.movie.dto.MovieDTO;
import chobong.movie.dto.ReviewDTO;

public interface ReviewDAO {
	
	  // 게시판  	  - 게시판 번호는 시퀀스라서 중복체크x
	/** 전체 영화리뷰 리스트 */
	List<ReviewDTO> selectAll() throws SQLException;
	
	/** 검색된 영화 리뷰 전체 */
	List<ReviewDTO> selectAllByMovieTitle( String movieCode ) throws SQLException; 
	
	 // ----수정됬음-----
	  /** 게시글번호에 해당하는 레코드 검색 ( 상세페이지 )  */
	ReviewDTO selectByReviewId(String reviewId) throws SQLException;
	  
	  
	  /** 게시판 조회수를 증가하는 기능
	   *  update Review set review_count = review_count + 1 where review_id=? */
	int increamentByReadnum(String ReviewNum) throws SQLException;
		  
	/** 
	* 조회순,인기순(평점), 최신순
	select * from Review order by review_count desc  // 조회순 -- 높은순
	select * from Review order by review_starPoint desc  // 평점순 -- 높은순
	select * from Review order by review_writeday desc  // 올린순 -- 최신순    */
	List<ReviewDTO> selectBykeyBest( String keyField );
		  
		  
	/**		ajax 씀
	 * 레코드 삽입
	 * @return : 1-삽입성공 , 0 - 삽입실패
	 * */
	int insert( ReviewDTO reviewDTO ) throws SQLException;
	  
	  /**
	   * 게시글번호에 해당하는 레코드 삭제
	   * @return : 1-삭제성공 , 0 - 삭제실패
	   * */
	int delete(String reviewId, String password ) throws SQLException;
	  
	   /**
	    * 게시글번호에 해당하는 레코드 수정 
	    * @return : 1-수정성공 , 0 - 수정실패
	    * */
	int update(ReviewDTO upReviewDTO, String password ) throws SQLException;
	    	  
}
