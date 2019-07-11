package chobong.movie.ajax;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chobong.movie.service.LikeService;

/**
 * Servlet implementation class LikeDoServlet
 */
@WebServlet("/likeclick")
public class LikeDoServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String memberId = (String)session.getAttribute("memberId");
		String reviewId = request.getParameter("reviewId");
		
		try {
			LikeService.likeDo(memberId, reviewId);
		} catch (SQLException e) {
			e.printStackTrace();
		}		
	}
}
