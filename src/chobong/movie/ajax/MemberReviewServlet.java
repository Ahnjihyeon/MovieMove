package chobong.movie.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chobong.movie.dto.ReviewDTO;
import chobong.movie.service.MemberService;
import net.sf.json.JSONArray;

/**
 * Servlet implementation class MemberReviewServlet
 */
@WebServlet("/memberreview")
public class MemberReviewServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String memberId = (String)session.getAttribute("memberId");
		
		List<ReviewDTO> list = new ArrayList<ReviewDTO>();
		try {
			response.setContentType("text/html;charset=utf-8");
			
			list = MemberService.memberReview(memberId);
			JSONArray json = JSONArray.fromObject(list);
			PrintWriter out = response.getWriter();
			out.println(json);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}
