package chobong.movie.dao;

import java.util.List;

import chobong.movie.dto.MemberDTO;

public interface MemberDAO {
	/** ������� id�ߺ�üũ 
	  select id from member where id=?    
	  @return true�̸� �ߺ�, 
	             false�̸� �ߺ��ƴ�   */
	boolean idCheck(String id);
	
	int login(String memberId, String memberPwd);
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
