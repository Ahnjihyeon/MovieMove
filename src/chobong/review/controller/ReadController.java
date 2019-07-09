package chobong.review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chobong.frontController.Controller;
import chobong.frontController.ModelAndView;

public class ReadController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String modelNum = request.getParameter("modelNum");
		String flag = request.getParameter("flag");
		
		boolean state = flag==null ? true : false; // ���� �� �ǵ��ƿö��� read��û�� flag=1���� ����
		
		String url = "errorView/error.jsp";
		ModelAndView mv = new ModelAndView();
		try {
			Electronics elec = ElectronicsService.selectByModelnum( modelNum, state );
			request.setAttribute("elec", elec );
			url ="elecView/read.jsp";
		} catch (SQLException e) {
			request.setAttribute( "errorMsg", e.getMessage() );
		}
		mv.setPath(url);
		return null;
	}
}
