package chobong.movie.service;

import java.sql.SQLException;

import chobong.movie.dao.MovieMoveDAO;
import chobong.movie.dao.MovieMoveDAOImpl;
import chobong.movie.dto.ReviewDTO;

public class MovieMoveService {
		private static MovieMoveDAO movieDAO = new MovieMoveDAOImpl();
	  /**
	   * MovieMoveDAO �� ���並 �����ϴ� �޼ҵ� ȣ��
	   * */
	public static int insert(ReviewDTO movieMove) throws SQLException {
		int result = movieDAO.insert(movieMove);
		if(result==0)throw new SQLException("��ϵ��� �ʾҽ��ϴ�.");
		
		return result;
	}
	
	 /**
	   * ElectronicsDAOImpl�� �𵨹�ȣ�� �ش��ϴ� ���ڵ� ���� �޼ҵ� ȣ��
	   * */
	  public static int delete(String reviewid, String reviewPwd) throws SQLException {
		 
		 /*  MovieMove dbMovie = movieDAO.selectByreviewid(reviewid); // �𵨹�ȣ�� �˻��ϴ� ��� ����
		 if(!dbMovie.getReviewPwd().equals(reviewPwd)) {
			 throw new SQLException("(��������)��й�ȣ �����Դϴ�.");
		 } */
		int result = movieDAO.delete(reviewid, reviewPwd);
		if(result==0)throw new SQLException("�������� �ʾҽ��ϴ�.");
			return result;
	  }
	  

	  
	  /**
	   * ElectronicsDAOImpl�� �𵨹�ȣ�� �ش��ϴ� ���ڵ� ����  �޼ҵ� ȣ��
	   * */
	  public static int update(ReviewDTO movieMove) throws SQLException {
		  
		 /*  MovieMove dbMovie = movieDAO.selectByreviewid(reviewid); // �𵨹�ȣ�� �˻��ϴ� ��� ����
		 	  if(!dbMovie.getReviewPwd().equals(reviewPwd)) {
			 throw new SQLException("(��������)��й�ȣ �����Դϴ�.");
		       } */
		  
		  int result = movieDAO.update(movieMove);
		  
		  if(result==0) throw new SQLException("�������� �ʾҽ��ϴ�.");
		  
		  return result;
	  }
	
	
}
