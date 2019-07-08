package chobong.review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chobong.frontController.Controller;
import chobong.frontController.ModelAndView;

public class UpdateController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
/*		
		String modelNum = request.getParameter("modelNum");
		String modelName = request.getParameter("model_name");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		String password = request.getParameter("password");
		
		Electronics elec = new Electronics(modelNum, modelName, 
				Integer.parseInt( price ), description, password);
		
		String url="errorView/error.jsp";
		ModelAndView mv = new ModelAndView();
		try {
			ElectronicsService.update(elec);
			url="elec?command=read&modelNum="+modelNum+"&flag=1";
			mv.setRedirect(true); // 다시 상세페이지인데 요청값 없어서 redirect
		} catch (SQLException e) {
			request.setAttribute("errorMsg", e.getMessage() );
		}
		mv.setPath(url);
		*/
		return null;
	}
}
