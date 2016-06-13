package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.addCountryDAO;
import DAO.contactDAO;
import VO.addcountryVO;
import VO.contactVO;

/**
 * Servlet implementation class contactController
 */
@WebServlet("/contactController")
public class contactController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contactController() {
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
		String flag = request.getParameter("flag");
		if(flag.equals("send"));
		{
			insert(request,response);
		}
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String contactname=request.getParameter("name");
		String contactemail=request.getParameter("email");
		String contactmessage=request.getParameter("message");
		contactVO contvo=new contactVO();
		contvo.setContactname(contactname);
		contvo.setContactmessage(contactmessage);
		contvo.setContactemail(contactemail);
		
		contactDAO contacdao=new contactDAO();
		contacdao.insert(contvo);
		response.sendRedirect("uview/contact.jsp");
		
	}

}
