package chobong.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chobong.frontController.Controller;
import chobong.frontController.ModelAndView;
import chobong.member.service.MemberService;

public class MemberInfoController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		String memberId = (String)session.getAttribute("memberId");
		System.out.println(memberId);
		MemberService.memberInfo(memberId);
		mv.setPath("memberInfo.jsp");		
		
		return mv;
	}

}
