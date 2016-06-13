package controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import VO.adminVO;

import DAO.adminDAO;

/**
 * Servlet implementation class indexController
 */
@WebServlet("/indexController")
public class indexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public indexController() {
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
		String Uname = request.getParameter("username");
		String PassWord = request.getParameter("password");
		List ls = null;
		

		adminDAO adminDAO=new adminDAO();
		adminVO adminVO=new adminVO();
		
		adminVO.setUsername(Uname);
		adminVO.setPassword(PassWord);
		
		
		ls=adminDAO.fetch(adminVO);
		//System.out.println("hello");
		if(ls!= null && ls.size()>0 )
		{
			Iterator it = ls.iterator();
			adminVO arvo =(adminVO)it.next();
			String Password = arvo.getPassword();
			if(Password.equals(Password))
			
			response.sendRedirect("view/dashboard.jsp");
			
		}
		else {
			response.sendRedirect("view/index.jsp");
		}
		
		}
	}


