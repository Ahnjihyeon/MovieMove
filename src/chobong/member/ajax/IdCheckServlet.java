package chobong.member.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chobong.member.service.MemberService;

/**
 * Servlet implementation class IdCheckServlet
 */
@WebServlet("/idcheck")
public class IdCheckServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		String memberId = request.getParameter("memberId");		
		boolean result = MemberService.idCheck(memberId);
		PrintWriter out = response.getWriter();
		if(result)out.println("중복입니다.");
		else out.println("사용가능합니다.");
		}

}
