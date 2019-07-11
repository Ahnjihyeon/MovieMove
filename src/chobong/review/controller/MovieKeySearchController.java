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
		
		System.out.println("�˻���:"+keyword);
		
		String url="error.jsp"; //����������
		
		ModelAndView mv = new ModelAndView();
		try {
			List<MovieDTO> list = MovieService.selectByMovieTitle(keyword);
			request.setAttribute("list", list);//view���� ����ϰ� �� key��
			
			url="search.jsp"; //����� ���
		}catch(SQLException e ) {
			request.setAttribute("errorMsg", e.getMessage());
		}		
		mv.setPath(url);				
		return mv;
	}

}
