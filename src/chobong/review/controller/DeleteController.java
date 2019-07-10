package chobong.review.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chobong.frontController.Controller;
import chobong.frontController.ModelAndView;
import chobong.movie.service.ReviewService;

public class DeleteController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 삭제할 url ( 게시글 번호로 삭제 );
		String reviewId = request.getParameter("reviewId"); 
		String reviewPwd = request.getParameter("reviewPwd");
		
		String url="errorView/error.jsp";
		ModelAndView mv = new ModelAndView();
		// 삭제 후에는 review.jsp로 돌아가야함.
		try {
			int result = ReviewService.delete(reviewId, reviewPwd);
			url="review.jsp";
			mv.setRedirect(true); // 이거 없으면 command=delete가 유지되서 또 호출되서 예외 발생 
			
		} catch (SQLException e) {
			request.setAttribute("errorMsg", e.getMessage() );
		}
		mv.setPath(url);
		
		return mv;
	}
}
