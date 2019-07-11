package chobong.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chobong.frontController.Controller;
import chobong.frontController.ModelAndView;

public class LogoutController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		
		session.invalidate();
		mv.setPath("index.jsp");
		mv.setRedirect(true);
		return mv;
	}

}
