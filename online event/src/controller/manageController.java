package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import DAO.ManageDAO;

/**
 * Servlet implementation class manageController
 */
@WebServlet("/manageController")
public class manageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public manageController() {
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

	private void manage1(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		System.out.println("sss");
		// TODO Auto-generated method stub
		ManageDAO manage=new ManageDAO();
		List l=manage.search();
		HttpSession session=request.getSession();
		session.setAttribute("ar", l);
		response.sendRedirect("view/ajax/blog/published.jsp");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
			 System.out.println("njj");
			 manage1(request, response);
		 
			System.out.println("hi");
	}

}
