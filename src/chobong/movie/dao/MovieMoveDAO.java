package chobong.movie.dao;

import java.sql.SQLException;

import chobong.movie.dto.ReviewDTO;

public interface MovieMoveDAO {

	
	/**
	 * ���ڵ� ����
	 * @return : 1-���Լ��� , 0 - ���Խ���
	 * */
	  int insert(ReviewDTO movie) throws SQLException;
	  
	  /**
	   * �𵨹�ȣ�� �ش��ϴ� ���ڵ� ����
	   * @return : 1-�������� , 0 - ��������
	   * */
	  int delete(String reviewid, String reviewPwd) throws SQLException;
	  
	   /**
	    * �𵨹�ȣ�� �ش��ϴ� ���ڵ� ����(���� ����, ����, ȸ�� ���� ����)
	    * @return : 1-�������� , 0 - ��������
	    * */
	  int update(ReviewDTO movie) throws SQLException;
	  
}
