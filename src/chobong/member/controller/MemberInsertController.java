package chobong.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chobong.frontController.Controller;
import chobong.frontController.ModelAndView;

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
		ModelAndView mv = new ModelAndView();
		String memberId = request.getParameter("memberId");
		return null;
	}
}
