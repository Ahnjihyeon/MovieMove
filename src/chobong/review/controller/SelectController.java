package chobong.review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chobong.frontController.Controller;
import chobong.frontController.ModelAndView;

public class SelectController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
/*		// ���� -> dao -> �� ��� list�� �����ϰ� list.jsp �̵�
		String url="errorView/error.jsp";
		try {
			List<Electronics> list = ElectronicsService.selectAll();
			request.setAttribute("list", list);
			url="elecView/list.jsp";
		} catch ( SQLException e ) {
			request.setAttribute("errorMsg", e.getMessage() );
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setPath( url );
		*/
		return null;
	}

}
