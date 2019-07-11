package chobong.movie.service;

import java.sql.SQLException;

import chobong.movie.dao.LikeDAO;
import chobong.movie.dao.LikeDAOImpl;

public class LikeService {
	private static LikeDAO likeDAO = new LikeDAOImpl();
	
	public static int likeDo(String memberId, String reviewId) throws SQLException{
		int result = likeDAO.likeDo(memberId, reviewId);
		return result;
	}
	
	public static int likeCount(String reviewId) throws SQLException{
		int sum = likeDAO.likeCount(reviewId);
		return sum;
	}
}
