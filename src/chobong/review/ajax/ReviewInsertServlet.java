package chobong.review.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chobong.frontController.ModelAndView;
import chobong.movie.dto.ReviewDTO;
import chobong.movie.service.ReviewService;

@WebServlet("/ReviewInsert")
public class ReviewInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// �Ѿ���� �� �ޱ�
		String memberId = request.getParameter("memberId");
		String movieCode = request.getParameter("movieCode");
		String reviewSubject = request.getParameter("reviewSubject");
		String reviewContent = request.getParameter("reviewContent");
					//������
		String reviewStarPoint = request.getParameter("reviewStarPoint");
					// ī��Ʈ
		String reviewPwd = request.getParameter("reviewPwd");
				
				
		// �� �Ѿ�Գ� Ȯ��
				
		// reviewContent �κп� tag( < )�� ����( &lt; )�� ����
		//reviewContent = reviewContent.replace("<", "&lt;");
		
		ReviewDTO reviewDTO = new ReviewDTO( null, memberId, movieCode, reviewSubject, reviewContent, 
											null, Integer.parseInt(reviewStarPoint), 0, reviewPwd);
				
		// DB�� �ֱ�		
		int result=0;
		try {
			result = ReviewService.insert(reviewDTO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		PrintWriter out = response.getWriter();
		out.print(result);
	}
}
