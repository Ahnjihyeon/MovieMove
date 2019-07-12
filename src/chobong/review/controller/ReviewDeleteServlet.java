package chobong.review.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.synth.SynthSpinnerUI;

import chobong.frontController.ModelAndView;
import chobong.movie.service.ReviewService;
@WebServlet("/ReviewDelete")
public class ReviewDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 삭제할 url ( 게시글 번호로 삭제 );
		String reviewId = request.getParameter("reviewId"); 
		String reviewPwd = request.getParameter("reviewPwd");
		System.out.println( "삭제 컨트롤2러 = " +reviewId + " : " +  reviewPwd );
		
		// 자바 스크립트 문구
		PrintWriter out = response.getWriter();
		try {
			int result = ReviewService.delete(reviewId, reviewPwd);
			System.out.println("삭제 result = " + result );
			out.println("<script>alert('삭제가 성공했습니다.')");
			out.println("history.back()</script>"); // 삭제 후에는 review.jsp로 돌아가야함.
			
		} catch (SQLException e) {
			e.printStackTrace();
			request.setAttribute("errorMsg", e.getMessage() );
			out.println("<script>location.href='errorView/error.jsp'</script>");
			
		}
	}
}
