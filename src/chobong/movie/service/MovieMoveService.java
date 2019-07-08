package chobong.movie.service;

import java.sql.SQLException;

import chobong.movie.dao.MovieMoveDAO;
import chobong.movie.dao.MovieMoveDAOImpl;
import chobong.movie.dto.ReviewDTO;

public class MovieMoveService {
		private static MovieMoveDAO movieDAO = new MovieMoveDAOImpl();
	  /**
	   * MovieMoveDAO 의 리뷰를 삽입하는 메소드 호출
	   * */
	public static int insert(ReviewDTO movieMove) throws SQLException {
		int result = movieDAO.insert(movieMove);
		if(result==0)throw new SQLException("등록되지 않았습니다.");
		
		return result;
	}
	
	 /**
	   * ElectronicsDAOImpl의 모델번호에 해당하는 레코드 삭제 메소드 호출
	   * */
	  public static int delete(String reviewid, String reviewPwd) throws SQLException {
		 
		 /*  MovieMove dbMovie = movieDAO.selectByreviewid(reviewid); // 모델번호로 검색하는 기능 연결
		 if(!dbMovie.getReviewPwd().equals(reviewPwd)) {
			 throw new SQLException("(삭제실패)비밀번호 오류입니다.");
		 } */
		int result = movieDAO.delete(reviewid, reviewPwd);
		if(result==0)throw new SQLException("삭제되지 않았습니다.");
			return result;
	  }
	  

	  
	  /**
	   * ElectronicsDAOImpl의 모델번호에 해당하는 레코드 수정  메소드 호출
	   * */
	  public static int update(ReviewDTO movieMove) throws SQLException {
		  
		 /*  MovieMove dbMovie = movieDAO.selectByreviewid(reviewid); // 모델번호로 검색하는 기능 연결
		 	  if(!dbMovie.getReviewPwd().equals(reviewPwd)) {
			 throw new SQLException("(삭제실패)비밀번호 오류입니다.");
		       } */
		  
		  int result = movieDAO.update(movieMove);
		  
		  if(result==0) throw new SQLException("수정되지 않았습니다.");
		  
		  return result;
	  }
	
	
}
