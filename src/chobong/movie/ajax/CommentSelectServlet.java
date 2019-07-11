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

import chobong.movie.dto.CommentDTO;
import chobong.movie.service.CommentService;
import net.sf.json.JSONArray;

/**
 * Servlet implementation class SelectCommentServlet
 */
@WebServlet("/selectcomment")
public class CommentSelectServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String commentBoard = request.getParameter("commentBoard");
		List<CommentDTO> list = new ArrayList<>();
		
		try {
			list = CommentService.selectComment(commentBoard);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JSONArray jsonArr = JSONArray.fromObject(list);
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println(jsonArr);
	}

}
