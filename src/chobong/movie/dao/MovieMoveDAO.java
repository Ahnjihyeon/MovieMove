package chobong.movie.dao;

import java.sql.SQLException;

import chobong.movie.dto.ReviewDTO;

public interface MovieMoveDAO {

	
	/**
	 * 레코드 삽입
	 * @return : 1-삽입성공 , 0 - 삽입실패
	 * */
	  int insert(ReviewDTO movie) throws SQLException;
	  
	  /**
	   * 모델번호에 해당하는 레코드 삭제
	   * @return : 1-삭제성공 , 0 - 삭제실패
	   * */
	  int delete(String reviewid, String reviewPwd) throws SQLException;
	  
	   /**
	    * 모델번호에 해당하는 레코드 수정(리뷰 제목, 별점, 회원 리뷰 내용)
	    * @return : 1-수정성공 , 0 - 수정실패
	    * */
	  int update(ReviewDTO movie) throws SQLException;
	  
}
