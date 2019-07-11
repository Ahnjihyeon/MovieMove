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

import chobong.movie.dto.MovieDTO;
import chobong.movie.service.MovieService;
import net.sf.json.JSONArray;

/**
 * Servlet implementation class BestMovieServlet
 */
@WebServlet("/bestmovie")
public class BestMovieServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<MovieDTO> list = new ArrayList<>();
		response.setContentType("text/html;charset=UTF-8");
		try {
			list = MovieService.selectBestMovie();
			JSONArray jsonArr = JSONArray.fromObject(list);
			PrintWriter out = response.getWriter();
			out.println(jsonArr);
		} catch (SQLException e) {		
			e.printStackTrace();
		}
				
	}
}
