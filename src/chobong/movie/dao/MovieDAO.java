package chobong.movie.dao;

import java.util.List;

import chobong.movie.dto.MovieDTO;

public interface MovieDAO {
	
	List<MovieDTO> selectByMovieTitle(String movieTitle);
}
