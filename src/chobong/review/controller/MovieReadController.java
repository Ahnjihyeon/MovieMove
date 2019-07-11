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
		//System.out.println( "리드 컨드롤러= " +reviewId );
	
/*		String flag = request.getParameter("flag");
		boolean state = flag==null ? true : false; // 수정 후 되돌아올때의 read요청은 flag=1같을 들고옴 */
		
		// 이거랑 같은 제목을 가진 review 검색
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
