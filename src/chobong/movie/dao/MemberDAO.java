package chobong.movie.dao;
import chobong.movie.dto.MemberDTO;
import chobong.movie.dto.ReviewDTO;

public interface MemberDAO {
	/** ������� id�ߺ�üũ 
	  select id from member where id=?    
	  @return true�̸� �ߺ�, 
	             false�̸� �ߺ��ƴ�   */
	boolean idCheck(String memberId);
	
	MemberDTO memberInfo(String memberId);
	
	MemberDTO login(String memberId, String memberPwd);
	/**
	 * Member ����ϱ�
	 * */
	int insert(MemberDTO memberDTO);
	
	/**
	 * id�� �ش��ϴ� ���ڵ� �����ϱ�
	 * */
	int delete(String memberId);
	
	/**
	 * id�� �ش��ϴ� ���ڵ� �����ϱ�
	 * */
	int update(MemberDTO memberDTO);	
	
	ReviewDTO memberReview(String memberId);
}
