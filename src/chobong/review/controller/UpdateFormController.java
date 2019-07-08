package chobong.review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chobong.frontController.Controller;
import chobong.frontController.ModelAndView;

public class UpdateFormController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
/*		String modelNum = request.getParameter("modelNum");
		
		String url="errorView/error.jsp";
		ModelAndView mv = new ModelAndView();
		try {
			Electronics elec = ElectronicsService.selectByModelnum( modelNum, false );
			request.setAttribute( "elec", elec );
			url="elecView/update.jsp";
			
		} catch (SQLException e) {
			request.setAttribute("errorMsg", e.getMessage() );
		}
		mv.setPath(url);
		*/
		return null;
	}
}
