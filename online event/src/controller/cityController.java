package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.html.HTMLDocument.Iterator;

import DAO.CategoryDAO;
import DAO.addCountryDAO;
import DAO.cityDAO;
import DAO.packageDAO;
import DAO.stateDAO;
import VO.CategoryVO;
import VO.addcountryVO;
import VO.cityVO;
import VO.packageVO;
import VO.stateVO;

/**
 * Servlet implementation class cityController
 */
@WebServlet("/cityController")
public class cityController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cityController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
				
			//update..........
				 String flag = request.getParameter("flag");
					
				 if(flag!=null && flag.equals("delete"))
				 {
					 delete(request, response);
				 }
				 else if(flag!=null && flag.equals("edit"))
				 {
					 edit(request, response);
					 
				 }
				
				 else{
					 response.sendRedirect("view/addcity.jsp");
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
		
		else if (request.getParameter("country_id") != null) {

			
			
			stateDAO stateDAO=new stateDAO();
			stateVO statevo=new stateVO();
		//System.out.println("aaaa");
			System.out.println(request.getParameter("country_id"));
			statevo.setCountryId(Long.valueOf(request.getParameter("country_id")));
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			List<stateVO> rs = new ArrayList<stateVO>();
			rs = stateDAO.searchbyCountryID(statevo);
			out.println("<select name='stateid' id='ddldrop' >");
			out.println("<option value='0'>Select</option>");
			if (rs.isEmpty()) {
				out.println("select");
			} else {
				java.util.Iterator<stateVO> iterator = rs.iterator();
				while (iterator.hasNext()) {
					stateVO stateobj = iterator.next();
					String state = "<option value="+stateobj.getStateid()+">"+stateobj.getAddstatename()+ "</option>";
					out.println(state);
				}
			}
			out.println("</select>");
		}
		
		else
		{
			insert(request,response);
		}
		
		
	}
	private void insertfood(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	public void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		

		String countryid=request.getParameter("countryid");
		String citydescription=request.getParameter("citydescription");
		String stateid=request.getParameter("stateid");
		String cityname=request.getParameter("city");
		cityVO cityvo=new cityVO();
		cityvo.setStateid(Long.parseLong(stateid));
		cityvo.setCountryid(Long.parseLong(countryid));
		cityvo.setCitydescription(citydescription);
		cityvo.setCityname(cityname);
		cityDAO citydao=new cityDAO();
		citydao.insert(cityvo);
		response.sendRedirect("view/addcity.jsp");
	}
	public void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		String cityname =request.getParameter("cityname");

		cityVO cityVO = new cityVO();
		cityVO.setCityname(cityname);
		
		cityDAO cityDAO = new cityDAO();
		
		List ls =cityDAO.fetch(cityVO);
		HttpSession session = request.getSession();
		session.setAttribute("lscitysearch",ls );
		response.sendRedirect("view/searchcity.jsp");
		
	}
public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id = request.getParameter("id");
		String countryid=request.getParameter("countryid");
		String citydescription=request.getParameter("citydescription");
		String stateid=request.getParameter("stateid");
		String cityname=request.getParameter("city");
		System.out.println(id);
		cityVO cityVO=new cityVO();
		if(id!=null && !id.equals(""))
		cityVO.setCityid(Long.valueOf(id));
		cityVO.setCityname(cityname);
		cityVO.setCitydescription(citydescription);
		cityVO.setStateid(Long.parseLong(stateid));
		cityVO.setCountryid(Long.parseLong(countryid));
		
		cityDAO cityDAO=new cityDAO();
		cityDAO.update(cityVO);
		search(request, response);
	}

	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		 String id =request.getParameter("id");
		
		cityVO cityVO=new cityVO();
		if(id!=null && !id.equals(""))
		cityVO.setCityid(Long.valueOf(id));
		
		cityDAO cityDAO=new cityDAO();
		cityDAO.delete(cityVO);
		search(request, response);
	}
public void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id=request.getParameter("id");
		
		
		cityVO cityVO=new cityVO();
		
		if(id!=null && !id.equals(""))
		   cityVO.setCityid(Long.valueOf(id));
		
		cityDAO cityDAO=new cityDAO();
		List ls=cityDAO.fetchById(cityVO);
		
		HttpSession session=request.getSession();
		session.setAttribute("hdnflag","update");	
		session.setAttribute("cityobj", ls.get(0));
			response.sendRedirect("view/addcity.jsp");
	}
  
}



