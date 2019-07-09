package chobong.frontController;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/movie")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Map<String, Controller> map;
 	
	@Override
	public void init( ) throws ServletException {
		ServletContext application = super.getServletContext();
		map = ( Map<String, Controller>)application.getAttribute("map");	
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 넘어오는 파라미터
		String key = request.getParameter("command");
		
		if( key==null ) key="list"; // list는 전체검색
		System.out.println("key=" + key);
		Controller controller = map.get(key);
		
		ModelAndView mv = controller.handleRequest(request, response);
		System.out.println("mv=" + mv);
		if( mv.isRedirect() ) { // redirect로 이동
			response.sendRedirect( mv.getPath() );
		} else {
			request.getRequestDispatcher( mv.getPath()).forward(request, response);;
		}		
	}
}
