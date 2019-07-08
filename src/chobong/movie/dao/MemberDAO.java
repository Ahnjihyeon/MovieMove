package chobong.movie.dao;

import java.util.List;

import chobong.movie.dto.MemberDTO;

public interface MemberDAO {

	
	/**
	 * 전체 Member 검색하기
	 * */
	List<MemberDTO> selectAll();
	
	/** id에 해당하는 정보검색( 상세페이지 ) 
	  select * from member where id=?    */
	MemberDTO selectById( String id );
	
	/** 등록전에 id중복체크 
	  select id from member where id=?    
	  @return true이면 중복, 
	             false이면 중복아님   */
	boolean idCheck(String id);
	
	/**
	 * Member 등록하기
	 * */
	int insert(MemberDTO memberDTO);
	
	/**
	 * id에 해당하는 레코드 삭제하기
	 * */
	int delete(String id);
	
	/**
	 * id에 해당하는 레코드 수정하기
	 * */
	int update(MemberDTO memberDTO);

}
