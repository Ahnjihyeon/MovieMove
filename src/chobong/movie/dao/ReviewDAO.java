package chobong.movie.dao;

import java.sql.SQLException;
import java.util.List;

import chobong.movie.dto.CommentDTO;
import chobong.movie.dto.MovieDTO;
import chobong.movie.dto.ReviewDTO;

public interface ReviewDAO {
	
	 // ��ȭ
	/** ��ȭ ����˻� 
		select * from Movie where movie_Title like ?	   */
	List<MovieDTO> selectBykeySearch( String keyField , String keyWord );
	  
	  
	  // �Խ���  	  - �Խ��� ��ȣ�� �������� �ߺ�üũx
	/** ��ȭ���� ��ü �˻� */
	 List<ReviewDTO> selectAll( String movieCode ) throws SQLException; 
	
	 // ----��������-----
	  /** �Խñ۹�ȣ�� �ش��ϴ� ���ڵ� �˻� ( �������� )  */
	  ReviewDTO selectByReviewId(String reviewId) throws SQLException;
	  
	  
	  /** �Խ��� ��ȸ���� �����ϴ� ���
	   *  update Review set review_count = review_count + 1 where review_id=? */
	  int increamentByReadnum(String ReviewNum) throws SQLException;
		  
	/** 
	* ��ȸ��,�α��(����), �ֽż�
	select * from Review order by review_count desc  // ��ȸ�� -- ������
	select * from Review order by review_starPoint desc  // ������ -- ������
	select * from Review order by review_writeday desc  // �ø��� -- �ֽż�    */
	List<ReviewDTO> selectBykeyBest( String keyField );
		  
		  
	/**		ajax ��
	 * ���ڵ� ����
	 * @return : 1-���Լ��� , 0 - ���Խ���
	 * */
	  int insert( ReviewDTO reviewDTO ) throws SQLException;
	  
	  /**
	   * �Խñ۹�ȣ�� �ش��ϴ� ���ڵ� ����
	   * @return : 1-�������� , 0 - ��������
	   * */
	  int delete(String reviewId, String password ) throws SQLException;
	  
	   /**
	    * �Խñ۹�ȣ�� �ش��ϴ� ���ڵ� ���� 
	    * @return : 1-�������� , 0 - ��������
	    * */
	  int update(ReviewDTO upReviewDTO, String password ) throws SQLException;
	  
	  
	  
	  
}
