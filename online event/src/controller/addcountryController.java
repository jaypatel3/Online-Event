package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import VO.CategoryVO;
import VO.addcountryVO;
import VO.cityVO;

import DAO.CategoryDAO;
import DAO.addCountryDAO;
import DAO.cityDAO;

/**
 * Servlet implementation class addcountryController
 */
@WebServlet("/addcountryController")
public class addcountryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addcountryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		
		 if(flag!=null && flag.equals("delete"))
		 {
			 delete(request, response);
		 }
		 if(flag!=null && flag.equals("edit"))
		 {
			 edit(request, response);
		 }
		
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag =request.getParameter("flag");
		System.out.println("flag==  " + flag );
		if(flag!=null && flag.equals("update"))
		{
			System.out.println("updarre");
			update(request,response);
		}
		else if(flag!=null && flag.equals("search"))
		{
			search(request, response);
		}
		else
		{
			insert(request,response);
		}
		
	}
	public void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String countryname=request.getParameter("country");
		String countrydescription=request.getParameter("description");
		addcountryVO addcountryvo=new addcountryVO();
		addcountryvo.setCountryname(countryname);
		addcountryvo.setCountrydescription(countrydescription);
		addCountryDAO addcountrydao=new addCountryDAO();
		addcountrydao.insert(addcountryvo);
		response.sendRedirect("view/addcountry.jsp");
	}
	public void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		String countryname =request.getParameter("countryname");

		addcountryVO addcountryVO = new addcountryVO();
		if(countryname!=null && !countryname.equals(""));
		addcountryVO.setCountryname(countryname);
		
		addCountryDAO addCountryDAO = new addCountryDAO();
		
		List ls =addCountryDAO.fetch(addcountryVO);
		HttpSession session = request.getSession();
		session.setAttribute("lscountrysearch",ls );
		response.sendRedirect("view/searchcountry.jsp");
		
	}
public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
	HttpSession session=request.getSession();
		String id = request.getParameter("id");
		String countryname=request.getParameter("country");
		String countrydescription=request.getParameter("description");
		
		addcountryVO addcountryVO=new addcountryVO();
		if(id!=null && !id.equals(""))
		addcountryVO.setCountryid(Long.parseLong(id));
		addcountryVO.setCountryname(countryname);
		addcountryVO.setCountrydescription(countrydescription);
		
		addCountryDAO addCountryDAO=new addCountryDAO();
		addCountryDAO.update(addcountryVO);
		System.out.println(id);
		session.removeAttribute("countryobj");
		search(request, response);
	}

	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		 String id =request.getParameter("id");
		
		addcountryVO addcountryVO=new addcountryVO();
		if(id!=null && !id.equals(""))
		addcountryVO.setCountryid(Long.valueOf(id));
		
		addCountryDAO addCountryDAO=new addCountryDAO();
		addCountryDAO.delete(addcountryVO);
		search(request, response);
	}
public void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id=request.getParameter("id");
		
		
		addcountryVO addcountryVO=new addcountryVO();
		
		if(id!=null && !id.equals(""))
		   addcountryVO.setCountryid(Long.valueOf(id));
		
		addCountryDAO addCountryDAO=new addCountryDAO();
		List ls=addCountryDAO.fetchById(addcountryVO);
		
		HttpSession session=request.getSession();
		session.setAttribute("hdnflag","update");	
		session.setAttribute("countryobj", ls.get(0));
			response.sendRedirect("view/addcountry.jsp");
	}

}
