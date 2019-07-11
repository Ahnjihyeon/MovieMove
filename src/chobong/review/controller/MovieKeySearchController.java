package chobong.review.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chobong.frontController.Controller;
import chobong.frontController.ModelAndView;
import chobong.movie.dto.MovieDTO;
import chobong.movie.service.MovieService;
import chobong.movie.service.ReviewService;

public class MovieKeySearchController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String keyword = request.getParameter("keyword");
		
		System.out.println("검색어:"+keyword);
		
		String url="error.jsp"; //에러페이지
		
		ModelAndView mv = new ModelAndView();
		try {
			List<MovieDTO> list = MovieService.selectByMovieTitle(keyword);
			request.setAttribute("list", list);//view에서 사용하게 될 key값
			
			url="search.jsp"; //실행될 경우
		}catch(SQLException e ) {
			request.setAttribute("errorMsg", e.getMessage());
		}		
		mv.setPath(url);				
		return mv;
	}

}
