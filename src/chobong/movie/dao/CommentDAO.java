package chobong.movie.dao;

import java.sql.SQLException;
import java.util.List;

import chobong.movie.dto.CommentDTO;

public interface CommentDAO {
	public int insertComment(CommentDTO commentDTO) throws SQLException;
	
	public List<CommentDTO> selectComment(String commentBoard) throws SQLException;
	
	public int deleteComment(int commentNum) throws SQLException;
}
