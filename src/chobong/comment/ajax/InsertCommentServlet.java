package chobong.comment.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chobong.comment.service.CommentService;
import chobong.movie.dto.CommentDTO;

/**
 * Servlet implementation class InsertComment
 */
@WebServlet("/insertcomment")
public class InsertCommentServlet extends HttpServlet {
  	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  		HttpSession session = request.getSession();
  		String commentBoard = request.getParameter("commentBoard");
  		String memberId = (String)session.getAttribute("memberId");
  		String commentContent = request.getParameter("commentContent");
  		System.out.println("insertServlet");
  		int result = 0;
  		if(memberId == null) { //로그인 되어있지 않으면 작성못하는 오류
  			result=-1;
  		}else {
  			/*if(commentContent.contains("<")) {
  				commentContent = commentContent.replace("<", "&lt;");
  			}*/
  			System.out.println(memberId);
  			System.out.println(commentBoard);
  			System.out.println(commentContent);
  			
  			
  			CommentDTO dto = new CommentDTO(null, commentBoard, memberId, commentContent, null);
  			
  			try {
				result = CommentService.insertComment(dto);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
  			
  		}
  		PrintWriter out = response.getWriter();
		out.println(result); 		
  	
  	}

}
