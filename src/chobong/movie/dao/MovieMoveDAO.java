package chobong.movie.dao;

import java.sql.SQLException;

import chobong.movie.dto.MovieMoveDTO;

public interface MovieMoveDAO {

	
	/**
	 * ���ڵ� ����
	 * @return : 1-���Լ��� , 0 - ���Խ���
	 * */
	  int insert(MovieMoveDTO movie) throws SQLException;
	  
	  /**
	   * �𵨹�ȣ�� �ش��ϴ� ���ڵ� ����
	   * @return : 1-�������� , 0 - ��������
	   * */
	  int delete(String reviewid, String reviewPwd) throws SQLException;
	  
	   /**
	    * �𵨹�ȣ�� �ش��ϴ� ���ڵ� ����(���� ����, ����, ȸ�� ���� ����)
	    * @return : 1-�������� , 0 - ��������
	    * */
	  int update(MovieMoveDTO movie) throws SQLException;
	  
}
