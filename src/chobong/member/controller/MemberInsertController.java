package chobong.member.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chobong.frontController.Controller;
import chobong.frontController.ModelAndView;
import chobong.member.service.MemberService;
import chobong.movie.dto.MemberDTO;

public class MemberInsertController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ModelAndView mv = new ModelAndView();
		
		String memberId = request.getParameter("memberId");
		String memberPwd = request.getParameter("memberPwd");
		String memberEmail = request.getParameter("memberEmail");
		String memberName = request.getParameter("memberName");
		String memberNickname = request.getParameter("memberNickname");
		int memberAge = Integer.parseInt(request.getParameter("memberAge"));
		
		MemberDTO member = new MemberDTO(memberId, memberPwd, memberEmail, memberName, memberNickname, memberAge, null);
		
		try {
			MemberService.insert(member);
			mv.setPath("review.jsp");
			mv.setRedirect(true);
		} catch (SQLException e) {
			request.setAttribute("errrMsg", e.getMessage());
		}
		
		return mv;
	}
}

