package chobong.movie.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chobong.movie.service.CommentService;

/**
 * Servlet implementation class DeleteCommentServlet
 */
@WebServlet("/deletecomment")
public class CommentDeleteServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String commentNum = request.getParameter("commentNum");
		
		int result = 0;
		try {
			result = CommentService.deleteComment(commentNum);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		
		out.println(result);		
	}
}
