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
/*
	memberId;
	private String memberPwd;
	private String memberEmail;
	private String memberName;
	private String memberNickname;
	private int memberAge;
	private String memberDate;*/
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("컨트롤러 호출");
		ModelAndView mv = new ModelAndView();
		
		String memberId = request.getParameter("id");
		String memberPwd = request.getParameter("pwd");
		String memberEmail = request.getParameter("email");
		String memberName = request.getParameter("nickname");
		String memberNickname = request.getParameter("nickname");
		int memberAge = Integer.parseInt(request.getParameter("age"));
		
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

