package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.addCountryDAO;
import DAO.blogDAO;
import VO.addcountryVO;
import VO.blogVO;

/**
 * Servlet implementation class blogController
 */
@WebServlet("/blogController")
public class blogController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public blogController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		if(flag.equals("submit"))
		{
			insert(request,response);
			
		}
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("hi");
		
		String name=request.getParameter("blog");
		blogVO blogvo=new blogVO();
		blogvo.setBlogName(name);
		
		blogDAO blogdao=new blogDAO();
		blogdao.insert(blogvo);
		response.sendRedirect("uview/blog.jsp");
	}

}
