package chobong.movie.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chobong.movie.dto.ReviewDTO;
import chobong.movie.service.MemberService;

/**
 * Servlet implementation class MemberReviewServlet
 */
@WebServlet("/memberreview")
public class MemberReviewServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("¸®ºäÃâ·Â ¼­ºí·¿");
		HttpSession session = request.getSession();
		String memberId = (String)session.getAttribute("memberId");
		ReviewDTO dto = new ReviewDTO();
		try {
			dto = MemberService.memberReview(memberId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		out.println(dto);
	}
}
