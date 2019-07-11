package chobong.movie.dao;

import java.sql.SQLException;

public interface LikeDAO {
	int likeDo(String memberId, String reviewId) throws SQLException;
	
	boolean likeCheck(String memberId, String reviewId) throws SQLException;
	
	int likeCount(String reviewId) throws SQLException;
}
