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
		
		// ������ url ( �Խñ� ��ȣ�� ���� );
		String reviewId = request.getParameter("reviewId"); 
		String reviewPwd = request.getParameter("reviewPwd");
		
		String url="errorView/error.jsp";
		ModelAndView mv = new ModelAndView();
		// ���� �Ŀ��� review.jsp�� ���ư�����.
		try {
			int result = ReviewService.delete(reviewId, reviewPwd);
			url="review.jsp";
			mv.setRedirect(true); // �̰� ������ command=delete�� �����Ǽ� �� ȣ��Ǽ� ���� �߻� 
			
		} catch (SQLException e) {
			request.setAttribute("errorMsg", e.getMessage() );
		}
		mv.setPath(url);
		
		return mv;
	}
}
