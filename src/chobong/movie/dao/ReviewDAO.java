package chobong.movie.dao;

import java.sql.SQLException;
import java.util.List;

public interface ReviewDAO {
	
	 // 영화
	 /** 영화 전체 검색 */
	List<MovieDTO> selectAll() throws SQLException; 
	  
	  /** 영화 제목검색 
		select * from Movie where movie_Title like ?	   */
	List<MovieDTO> selectBykeySearch( String keyField , String keyWord );
	  
	  
	  // 게시판  	  - 게시판 번호는 시퀀스라서 중복체크x
	  /** 게시글번호에 해당하는 레코드 검색 ( 상세페이지 )  */
	  ReviewDTO selectByReviewNum(String reviewNum) throws SQLException;
	  
	  
	  /** 게시판 조회수를 증가하는 기능
	   *  update Review set review_count = review_count + 1 where review_id=? */
	  int increamentByReadnum(String ReviewNum) throws SQLException;
		  
	/** 
	* 조회순,인기순(평점), 최신순
	select * from Review order by review_count desc  // 조회순 -- 높은순
	select * from Review order by review_starPoint desc  // 평점순 -- 높은순
	select * from Review order by review_writeday desc  // 올린순 -- 최신순    */
	List<ReviewDTO> selectBykeyBest( String keyField );
		  
		  
	/**
	 * 레코드 삽입
	 * @return : 1-삽입성공 , 0 - 삽입실패
	 * */
	  int insert( ReviewDTO reviewDTO ) throws SQLException;
	  
	  /**
	   * 게시글번호에 해당하는 레코드 삭제
	   * @return : 1-삭제성공 , 0 - 삭제실패
	   * */
	  int delete(String reviewNum, String password ) throws SQLException;
	  
	   /**
	    * 게시글번호에 해당하는 레코드 수정 
	    * @return : 1-수정성공 , 0 - 수정실패
	    * */
	  int update(ReviewDTO movieDTO, String password ) throws SQLException;
	  
	  
	  
}
