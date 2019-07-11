package chobong.review.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chobong.frontController.Controller;
import chobong.frontController.ModelAndView;
import chobong.movie.dto.ReviewDTO;
import chobong.movie.service.ReviewService;

public class ReadController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String reviewId = request.getParameter("reviewId");
		//System.out.println( "���� ����ѷ�= " +reviewId );
	
/*		String flag = request.getParameter("flag");
		boolean state = flag==null ? true : false; // ���� �� �ǵ��ƿö��� read��û�� flag=1���� ���� */
		
		// �̰Ŷ� ���� ������ ���� review �˻�
		String url = "errorView/error.jsp";
		ModelAndView mv = new ModelAndView();
		try {
			// Electronics elec = ElectronicsService.selectByModelnum( modelNum, state );
			ReviewDTO reviewDTO= ReviewService.selectByReviewId(reviewId);
			request.setAttribute( "reviewDTO", reviewDTO );
			url = "reviewReply.jsp";
			
		} catch (SQLException e) {
			request.setAttribute( "errorMsg", e.getMessage() );
		}
		mv.setPath( url );
		return mv;
	}
}
