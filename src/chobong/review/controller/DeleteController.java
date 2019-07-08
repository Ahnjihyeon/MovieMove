package chobong.review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chobong.frontController.Controller;
import chobong.frontController.ModelAndView;

public class DeleteController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
/*		
		String modelNum = request.getParameter("modelNum");
		String password = request.getParameter("password");
		
		String url="errorView/error.jsp";
		ModelAndView mv = new ModelAndView();
		try {
			ElectronicsService.delete(modelNum, password);
			url="elec";
			mv.setRedirect(true); // 이거 없으면 command=delete가 유지되서 또 호출되서 예외 발생 
		} catch ( SQLException e) {
			request.setAttribute("errorMsg", e.getMessage() );
		}
		mv.setPath(url);
		*/
		return null;
	}
}
