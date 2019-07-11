package chobong.member.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chobong.frontController.Controller;
import chobong.frontController.ModelAndView;
import chobong.movie.dto.MemberDTO;
import chobong.movie.service.MemberService;

public class LoginController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ModelAndView mv = new ModelAndView();
		String memberId = request.getParameter("memberId");
		String memberPwd = request.getParameter("memberPwd");
		MemberDTO member = new MemberDTO();
		try {
			HttpSession session = request.getSession();
			member = MemberService.login(memberId, memberPwd);
			session.setAttribute("memberId", memberId);
			session.setAttribute("member", member);
			mv.setPath("a.jsp");
			mv.setRedirect(true);
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return mv;
	}

}
