package controller;

import java.io.IOException;
import java.util.List;
import java.lang.Long;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.addCountryDAO;
import DAO.foodsubcatDAO;
import DAO.stateDAO;
import DAO.subcategoryDAO;

import VO.addcountryVO;
import VO.foodsubcatVO;
import VO.stateVO;
import VO.subcategoryVO;

/**
 * Servlet implementation class stateController
 */
@WebServlet("/stateController")
public class stateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public stateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		addcountryVO addcountryVO=new addcountryVO();
		addcountryVO.setCountryname("");
		addCountryDAO addCountryDAO=new addCountryDAO();
		List ls=addCountryDAO.fetch(addcountryVO);
		HttpSession session = request.getSession();
		session.setAttribute("lsCountry",ls);
		
		//update............
		 String flag = request.getParameter("flag");
			
		 if(flag!=null && flag.equals("delete"))
		 {
			 delete(request,response);
		 }
		 else if(flag!=null && flag.equals("edit"))
		 {
			 edit(request, response);
		 }
		
		 else{
			 response.sendRedirect("view/addstate.jsp");
		 }
		
	}

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
			search(request,response);
		}
		else
		{
			insert(request,response);
		}	
		}
	
	public void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String countryid=request.getParameter("countryid");
		String statename=request.getParameter("addstatename");
		String statedes=request.getParameter("statedescription");
		
		stateVO stateVO=new stateVO();
		stateVO.setCountryId(Long.parseLong(countryid));
		stateVO.setAddstatename(statename);
		stateVO.setStatedescription(statedes);
		
		stateDAO stateDAO=new stateDAO();
		stateDAO.insert(stateVO);
		response.sendRedirect("view/addstate.jsp");
	}
	public void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		String statename =request.getParameter("statename");

		stateVO stateVO = new stateVO();
		stateVO.setAddstatename(statename);
		
		stateDAO stateDAO = new stateDAO();
		
		List ls =stateDAO.fetch(stateVO);
		HttpSession session = request.getSession();
		session.setAttribute("lsstatesearch",ls );
		response.sendRedirect("view/searchstate.jsp");
		}
	public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id = request.getParameter("id");
		String countryid=request.getParameter("countryid");
		String statename=request.getParameter("addstatename");
		String statedes=request.getParameter("statedescription");
		
		System.out.println(id);
		stateVO stateVO=new stateVO();
		if(id!=null && !id.equals(""))
		stateVO.setStateid(Long.valueOf(id));
		stateVO.setCountryId(Long.parseLong(countryid));
		stateVO.setAddstatename(statename);
	    stateVO.setStatedescription(statedes);
	   
		stateDAO stateDAO=new stateDAO();
		stateDAO.update(stateVO);
		search(request, response);
	}

	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		 String id =request.getParameter("id");
		System.out.println(id);
		stateVO stateVO=new stateVO();
		if(id!=null && !id.equals(""))
		stateVO.setStateid(Long.valueOf(id));
		
		stateDAO stateDAO=new stateDAO();
		stateDAO.delete(stateVO);
		search(request,response);
	}
public void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id=request.getParameter("id");
		
		System.out.println(id);
		
	stateVO stateVO=new stateVO();
		
		if(id!=null && !id.equals(""))
		   stateVO.setStateid(Long.valueOf(id));
		
		stateDAO stateDAO=new stateDAO();
		List ls=stateDAO.fetchById(stateVO);
		HttpSession session = request.getSession();
		
		session.setAttribute("hdnflag","update");	
		session.setAttribute("stateobj", ls.get(0));
		response.sendRedirect("view/addstate.jsp");
	}

}
