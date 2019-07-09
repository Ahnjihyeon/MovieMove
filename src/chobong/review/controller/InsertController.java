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
		
		// �Ѿ���� �� �ޱ�
		String memberId = request.getParameter("memberId");
		String movieCode = request.getParameter("movieCode");
		String reviewSubject = request.getParameter("reviewSubject");
		String reviewContent = request.getParameter("reviewContent");
			//������
		String reviewStarPoint = request.getParameter("reviewStarPoint");
			// ī��Ʈ
		String reviewPwd = request.getParameter("reviewPwd");
		
		// reviewContent �κп� tag( < )�� ����( &lt; )�� ����
		reviewContent = reviewContent.replace("<", "&lt;");
		
		// �� �Ѿ�Գ� Ȯ��
		System.out.println( "insert��Ʈ�ѷ��� = " + memberId + " : " + movieCode + " : " + reviewSubject + " : " + 
				reviewContent + " : " + reviewStarPoint + " : " + reviewPwd);
		
		
		ReviewDTO reviewDTO = new ReviewDTO( null, memberId, movieCode, reviewSubject, reviewContent, 
											null, Integer.parseInt(reviewStarPoint), 0, reviewPwd);
		
		
		ModelAndView mv = new ModelAndView();
		// ���� ȣ��
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
