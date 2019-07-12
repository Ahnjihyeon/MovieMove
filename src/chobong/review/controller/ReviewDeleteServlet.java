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
	
		// ������ url ( �Խñ� ��ȣ�� ���� );
		String reviewId = request.getParameter("reviewId"); 
		String reviewPwd = request.getParameter("reviewPwd");
		System.out.println( "���� ��Ʈ��2�� = " +reviewId + " : " +  reviewPwd );
		
		// �ڹ� ��ũ��Ʈ ����
		PrintWriter out = response.getWriter();
		try {
			int result = ReviewService.delete(reviewId, reviewPwd);
			System.out.println("���� result = " + result );
			out.println("<script>alert('������ �����߽��ϴ�.')");
			out.println("history.back()</script>"); // ���� �Ŀ��� review.jsp�� ���ư�����.
			
		} catch (SQLException e) {
			e.printStackTrace();
			request.setAttribute("errorMsg", e.getMessage() );
			out.println("<script>location.href='errorView/error.jsp'</script>");
			
		}
	}
}
