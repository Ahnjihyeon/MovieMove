package chobong.movie.service;

import java.sql.SQLException;
import java.util.List;

import chobong.movie.dao.MovieDAO;
import chobong.movie.dao.MovieDAOImpl;
import chobong.movie.dto.MovieDTO;

public class MovieService {
	private static MovieDAO movieDAO = new MovieDAOImpl();
	
	public static List<MovieDTO> selectByMovieTitle(String movieTitle) throws SQLException{
		List<MovieDTO> list = movieDAO.selectByMovieTitle(movieTitle);
		return list;
	}
}
