package chobong.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chobong.frontController.Controller;
import chobong.frontController.ModelAndView;
import chobong.member.service.MemberService;
import chobong.movie.dto.MemberDTO;

public class UpdateMemberController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		ModelAndView mv = new ModelAndView();
		String memberId = request.getParameter("memberId");
		String memberEmail = request.getParameter("memberEmail");
		String memberNickname = request.getParameter("memberNickname");
		
		MemberDTO dto = new MemberDTO(memberId, memberEmail, memberNickname);
		try {
			MemberService.update(dto);
			HttpSession session = request.getSession();
			session.invalidate();
			mv.setPath("review.jsp");			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return mv;
	}

}
