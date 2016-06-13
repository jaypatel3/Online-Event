package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import DAO.SignupDAO;
import DAO.addCountryDAO;
import DAO.cityDAO;
import DAO.hotelDAO;
import DAO.stateDAO;
import VO.SignupVO;
import VO.addcountryVO;
import VO.cityVO;
import VO.hotelVO;
import VO.stateVO;

/**
 * Servlet implementation class SignupController
 */
@WebServlet("/SignupController")
public class SignupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		addcountryVO countryvo=new addcountryVO();
		countryvo.setCountryname("");
		addCountryDAO countrydao=new addCountryDAO();
		List ls =countrydao.fetch(countryvo);
		HttpSession session = request.getSession();
		session.setAttribute("country",ls);
		
		stateVO statevo=new stateVO();
		statevo.setAddstatename("");
		stateDAO statedao=new stateDAO();
		List ls1=statedao.fetch(statevo);
		HttpSession session1 = request.getSession();
		session1.setAttribute("state",ls1);
				
				cityVO cityvo=new cityVO();
				cityvo.setCityname("");
				cityDAO citydao=new cityDAO();
				List ls2=citydao.fetch(cityvo);
				HttpSession session2 = request.getSession();
				session2.setAttribute("city",ls2);
		
		//update............
		
		
		 
			response.sendRedirect("uview/signup.jsp");
		 




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
		
	}

	
	private void insertSubmit(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String emailid = request.getParameter("emailid");
		String name = request.getParameter("firstname");
		String username = request.getParameter("username");
		String lastname = request.getParameter("lastname");
		String pword = request.getParameter("password");
		String address = request.getParameter("address");
		String city = request.getParameter("cityid");
		String state = request.getParameter("stateid");
		String country = request.getParameter("countryid");
		String userType = "user";
		System.out.println(name);
		
		SignupVO signupVO = new SignupVO();
		signupVO.setFname(name);
		signupVO.setUsername(username);
		signupVO.setLname(lastname);
		signupVO.setPassword(pword);
		signupVO.setAddress(address);
		signupVO.setCity(city);
		signupVO.setState(state);
		signupVO.setCountry(country);
		signupVO.setEmailid(emailid);
		signupVO.setUserType(userType);
		
		
		System.out.println(name);
		
		
		SignupDAO signupDAO = new SignupDAO();
	signupDAO.insert(signupVO);
		
		response.sendRedirect("signin.jsp");
	}

	

}
