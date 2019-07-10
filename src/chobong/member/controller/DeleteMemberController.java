package chobong.member.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chobong.frontController.Controller;
import chobong.frontController.ModelAndView;
import chobong.member.service.MemberService;

public class DeleteMemberController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		String memberId = (String)session.getAttribute("memberId");		
		try {
			MemberService.delete(memberId);
			session.invalidate();
			mv.setPath("review.jsp");
			mv.setRedirect(true);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return mv;
	}

}
