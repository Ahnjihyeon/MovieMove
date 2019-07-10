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
	
	 // ��ȭ
	/** ��ȭ ����˻�   */
	public static List<MovieDTO> selectBykeySearch( String keyField , String keyWord ) {
		
		return null;
	}
	  
	  
	  // �Խ���  	  - �Խ��� ��ȣ�� �������� �ߺ�üũx
	/** ��ȭ���� ��ü �˻� */
	public static  List<ReviewDTO> selectAll( String movieCode ) throws SQLException {
		List<ReviewDTO> list = reviewDAO.selectAll(movieCode);
		return list;
	}
	
	
	  /** �Խñ۹�ȣ�� �ش��ϴ� ���ڵ� �˻� ( �������� )  */
	public static  ReviewDTO selectByReviewSubject(String reviewSubject) throws SQLException {
		ReviewDTO reviewDTO = reviewDAO.selectByReviewSubject(reviewSubject);
		return reviewDTO;
	}
	  
	  
	  /** �Խ��� ��ȸ���� �����ϴ� ���
	   *  update Review set review_count = review_count + 1 where review_id=? */
	public static int increamentByReadnum(String ReviewNum) throws SQLException {
		return 0;
	}
		  
	/** 
	* ��ȸ��,�α��(����), �ֽż�
	select * from Review order by review_count desc  // ��ȸ�� -- ������
	select * from Review order by review_starPoint desc  // ������ -- ������
	select * from Review order by review_writeday desc  // �ø��� -- �ֽż�    */
	public static List<ReviewDTO> selectBykeyBest( String keyField ) {
		return null;
	}
		  
		  
	/**
	 * ���ڵ� ����
	 * @return : 1-���Լ��� , 0 - ���Խ���
	 * */
	public static int insert( ReviewDTO reviewDTO ) throws SQLException {
		int result = reviewDAO.insert(reviewDTO);
		if( result == 0 ) throw new SQLException("��ϵ��� �ʾҽ��ϴ�.");
		return result;
	}
	  
	  /**
	   * �Խñ۾��̵� �ش��ϴ� ���ڵ� ����
	   * @return : 1-�������� , 0 - ��������
	   * */
	public static int delete(String reviewId, String password ) throws SQLException {
		int result = reviewDAO.delete(reviewId, password);
		if( result == 0 ) throw new SQLException("�Խñ��� ������ �� �����ϴ�.");
		return result;
	}
	  
	   /**
	    * �Խñ۹�ȣ�� �ش��ϴ� ���ڵ� ���� 
	    * @return : 1-�������� , 0 - ��������
	    * */
	public static int update(ReviewDTO movieDTO, String password ) throws SQLException {
		return 0;
	}
	
	

}
