package chobong.review.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chobong.frontController.Controller;
import chobong.frontController.ModelAndView;
import chobong.movie.dto.ReviewDTO;
import chobong.movie.service.ReviewService;

public class InsertController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 넘어오는 값 받기
		String memberId = request.getParameter("memberId");
		String movieCode = request.getParameter("movieCode");
		String reviewSubject = request.getParameter("reviewSubject");
		String reviewContent = request.getParameter("reviewContent");
			//가입일
		String reviewStarPoint = request.getParameter("reviewStarPoint");
			// 카운트
		String reviewPwd = request.getParameter("reviewPwd");
		
		// reviewContent 부분에 tag( < )를 문자( &lt; )로 변경
		reviewContent = reviewContent.replace("<", "&lt;");
		
		// 값 넘어왔나 확인
		System.out.println( "insert컨트롤러값 = " + memberId + " : " + movieCode + " : " + reviewSubject + " : " + 
				reviewContent + " : " + reviewStarPoint + " : " + reviewPwd);
		
		
		ReviewDTO reviewDTO = new ReviewDTO( null, memberId, movieCode, reviewSubject, reviewContent, 
											null, Integer.parseInt(reviewStarPoint), 0, reviewPwd);
		
		
		ModelAndView mv = new ModelAndView();
		// 서비스 호출
		try {
			ReviewService.insert(reviewDTO);
			mv.setPath("index.html");
			mv.setRedirect(true);
			
		} catch (SQLException e) {
			request.setAttribute( "errorMsg", e.getMessage() );
			mv.setPath("errorVew/error.jsp");
		}
		return mv;
	}
}
