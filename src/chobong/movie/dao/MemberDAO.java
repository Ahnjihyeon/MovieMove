package chobong.movie.dao;

import java.util.List;

import kosta.dto.CustomerDTO;

public interface MemberDAO {

	
	/**
	 * ��ü Member �˻��ϱ�
	 * */
	List<MemberDTO memberDTO> selectAll();
	
	/** id�� �ش��ϴ� �����˻�( �������� ) 
	  select * from member where id=?    */
	MemberDTO selectById( String id );
	
	/** ������� id�ߺ�üũ 
	  select id from member where id=?    
	  @return true�̸� �ߺ�, 
	             false�̸� �ߺ��ƴ�   */
	boolean idCheck(String id);
	
	/**
	 * Member ����ϱ�
	 * */
	int insert(MemberDTO memberDTO);
	
	/**
	 * id�� �ش��ϴ� ���ڵ� �����ϱ�
	 * */
	int delete(String id);
	
	/**
	 * id�� �ش��ϴ� ���ڵ� �����ϱ�
	 * */
	int update(MemberDTO memberDTO);

}
