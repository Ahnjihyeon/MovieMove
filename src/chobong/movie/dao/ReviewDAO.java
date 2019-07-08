package chobong.movie.dao;

import java.sql.SQLException;
import java.util.List;

public interface ReviewDAO {
	
	 // ��ȭ
	 /** ��ȭ ��ü �˻� */
	List<MovieDTO> selectAll() throws SQLException; 
	  
	  /** ��ȭ ����˻� 
		select * from Movie where movie_Title like ?	   */
	List<MovieDTO> selectBykeySearch( String keyField , String keyWord );
	  
	  
	  // �Խ���  	  - �Խ��� ��ȣ�� �������� �ߺ�üũx
	  /** �Խñ۹�ȣ�� �ش��ϴ� ���ڵ� �˻� ( �������� )  */
	  ReviewDTO selectByReviewNum(String reviewNum) throws SQLException;
	  
	  
	  /** �Խ��� ��ȸ���� �����ϴ� ���
	   *  update Review set review_count = review_count + 1 where review_id=? */
	  int increamentByReadnum(String ReviewNum) throws SQLException;
		  
	/** 
	* ��ȸ��,�α��(����), �ֽż�
	select * from Review order by review_count desc  // ��ȸ�� -- ������
	select * from Review order by review_starPoint desc  // ������ -- ������
	select * from Review order by review_writeday desc  // �ø��� -- �ֽż�    */
	List<ReviewDTO> selectBykeyBest( String keyField );
		  
		  
	/**
	 * ���ڵ� ����
	 * @return : 1-���Լ��� , 0 - ���Խ���
	 * */
	  int insert( ReviewDTO reviewDTO ) throws SQLException;
	  
	  /**
	   * �Խñ۹�ȣ�� �ش��ϴ� ���ڵ� ����
	   * @return : 1-�������� , 0 - ��������
	   * */
	  int delete(String reviewNum, String password ) throws SQLException;
	  
	   /**
	    * �Խñ۹�ȣ�� �ش��ϴ� ���ڵ� ���� 
	    * @return : 1-�������� , 0 - ��������
	    * */
	  int update(ReviewDTO movieDTO, String password ) throws SQLException;
	  
	  
	  
}
