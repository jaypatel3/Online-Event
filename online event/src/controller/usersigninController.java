package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CategoryDAO;
import DAO.LoginDAO;
import DAO.SignupDAO;
import VO.CategoryVO;
import VO.LoginVO;
import VO.SignupVO;

/**
 * Servlet implementation class usersigninController
 */
@WebServlet("/usersigninController")
public class usersigninController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public usersigninController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
			}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("submit");
		
		
		if(flag.equals("submit"))
		{
			insertSubmit(request, response);
		
		}
		CategoryVO categoryVO=new CategoryVO();
		categoryVO.setCatName("");
		
		CategoryDAO categoryDAO=new CategoryDAO();
		List ls=categoryDAO.fetch(categoryVO);
		HttpSession session = request.getSession();
		
		session.setAttribute("lsusercategorysearch12345",ls );
		System.out.println(ls.size());
//		response.sendRedirect("uview/index.jsp");

		
	
	}
		

	private void insertSubmit(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String pword = request.getParameter("password");
		
		
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(username);
		loginVO.setPassword(pword);
		
		LoginDAO loginDAO = new LoginDAO();
		loginDAO.insert(loginVO);
			
			response.sendRedirect("uview/index.jsp");
		
	}

}
