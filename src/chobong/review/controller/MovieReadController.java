package chobong.review.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chobong.frontController.Controller;
import chobong.frontController.ModelAndView;
import chobong.movie.dto.MovieDTO;
import chobong.movie.service.MovieService;
import chobong.movie.service.ReviewService;

public class MovieReadController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String movieCode = request.getParameter("movieCode");
		System.out.println(movieCode);
		//System.out.println( "���� ����ѷ�= " +reviewId );
	
/*		String flag = request.getParameter("flag");
		boolean state = flag==null ? true : false; // ���� �� �ǵ��ƿö��� read��û�� flag=1���� ���� */
		
		// �̰Ŷ� ���� ������ ���� review �˻�
		String url = "errorView/error.jsp";
		ModelAndView mv = new ModelAndView();
		try {
			MovieDTO movieDTO = MovieService.selectByMovieCode(movieCode);
			request.setAttribute( "movieDTO", movieDTO );		
			System.out.println(movieDTO);
			url = "review.jsp";
			
		} catch (SQLException e) {
			request.setAttribute( "errorMsg", e.getMessage() );
		}
		mv.setPath( url );
		return mv;
	}
}
