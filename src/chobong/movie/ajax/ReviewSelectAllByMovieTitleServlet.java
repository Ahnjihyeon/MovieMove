package chobong.movie.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xerces.internal.util.SynchronizedSymbolTable;

import chobong.movie.dto.ReviewDTO;
import chobong.movie.service.ReviewService;
import net.sf.json.JSONArray;

@WebServlet("/ReviewMovieTitle") 
public class ReviewSelectAllByMovieTitleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String movieCode = request.getParameter("movieCode");
		
		List<ReviewDTO> list= new ArrayList<ReviewDTO>();
		try {
			list = ReviewService.selectAllByMovieTitle(movieCode);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//list를 json형태로 변환 -> ~.jar 필요.
		JSONArray jsonArr = JSONArray.fromObject(list);
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println(jsonArr);
	}
}
