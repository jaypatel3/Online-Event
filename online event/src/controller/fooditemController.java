package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CategoryDAO;
import DAO.cityDAO;
import DAO.foodcatDAO;
import DAO.fooditemDAO;
import DAO.foodsubcatDAO;
import DAO.packageDAO;
import DAO.stateDAO;
import DAO.subcategoryDAO;
import VO.CategoryVO;
import VO.cityVO;
import VO.foodcategoryVO;
import VO.fooditemVO;
import VO.foodsubcatVO;
import VO.packageVO;
import VO.stateVO;
import VO.subcategoryVO;

/**
 * Servlet implementation class fooditemController
 */
@WebServlet("/fooditemController")
public class fooditemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public fooditemController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		foodcategoryVO foodcategoryVO=new foodcategoryVO();
		foodcategoryVO.setFoodcatName("");
		foodcatDAO foodcatdao=new foodcatDAO();
		List ls =foodcatdao.fetch(foodcategoryVO);
		HttpSession session = request.getSession();
		session.setAttribute("foodcategory",ls);
		
		foodsubcatVO foodsubcatVO=new foodsubcatVO();
		foodsubcatVO.setFoodsubcatname("");
		foodsubcatDAO foodsubcatDAO=new foodsubcatDAO();
		List ls1=foodsubcatDAO.fetch(foodsubcatVO);
		HttpSession session1 = request.getSession();
				session1.setAttribute("foodsubcategory",ls1);
				
				
				//update............
				 String flag = request.getParameter("flag");
					
				 if(flag!=null && flag.equals("delete"))
				 {
					 delete(request, response);
				 }
				 if(flag!=null && flag.equals("edit"))
				 {
					 edit(request, response);
				 }
			
					 if(flag!=null && flag.equals("allfoodcat"))
					 {
						 System.out.println("hi");
						 fooditemDAO dao=new fooditemDAO();
							List l=dao.search();
							HttpSession session12=request.getSession();
							session12.setAttribute("cat", l);
						 response.sendRedirect("uview/listfood1.jsp");
					 }
					 if(flag== null){
							response.sendRedirect("view/addfooditm.jsp");
					 }
				}
	
	

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag =request.getParameter("flag");
		System.out.println("flag==  " +flag );
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

			
			
			foodsubcatDAO foodsubcatDAO=new foodsubcatDAO();
			foodsubcatVO foodsubcatVO=new foodsubcatVO();
		//System.out.println("aaaa");
			System.out.println(request.getParameter("country_id"));
			foodsubcatVO.setFoodcatid(Long.valueOf(request.getParameter("country_id")));
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			List<foodsubcatVO> rs = new ArrayList<foodsubcatVO>();
			rs = foodsubcatDAO.searchbyCountryID(foodsubcatVO);
			out.println("<select id='foodsubcategory' name='foodsubcategory' >");
			out.println("<option value='0'>Select</option>");
			if (rs.isEmpty()) {
				out.println("select");
			} else {
				Iterator<VO.foodsubcatVO> iterator = rs.iterator();
				while (iterator.hasNext()) {
					foodsubcatVO stateobj = iterator.next();
					String state = "<option value="+stateobj.getFoodsbubcatid()+">"+stateobj.getFoodsubcatname()+ "</option>";
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
	public void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String foodcatid=request.getParameter("foodcategory");
		String foodsubcatid=request.getParameter("foodsubcategory");
		String fooditemprice=request.getParameter("fooditemprice");
		String fooditemname=request.getParameter("fooditemname");
		
		String fooditemdes=request.getParameter("fooditemdes");
		HttpSession session = request.getSession();
        String s=String.valueOf(session.getAttribute("name"));
        session.removeAttribute("name");
		fooditemVO fooditemVO=new fooditemVO();
        
		fooditemVO.setFoodcategoryid(Long.parseLong(foodcatid));
		fooditemVO.setFoodsubcategoryid(Long.parseLong(foodsubcatid));
		fooditemVO.setFooditemname(fooditemname);
	    fooditemVO.setFooditemdes(fooditemdes);
	    fooditemVO.setFooditempic(s);
	    fooditemVO.setFooditemprice(fooditemprice);
		fooditemDAO fooditemdao=new fooditemDAO();
		fooditemdao.insert(fooditemVO);
		response.sendRedirect("view/addfooditm.jsp");
	}
	public void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		String fooditemname =request.getParameter("fooditemname");

		fooditemVO fooditemVO= new fooditemVO();
		fooditemVO.setFooditemname(fooditemname);
		
		fooditemDAO fooditemDAO = new fooditemDAO();
		
		List ls =fooditemDAO.fetch(fooditemVO);
		HttpSession session = request.getSession();
		session.setAttribute("lsfooditemsearch",ls );
		response.sendRedirect("view/searchfooditm.jsp");
		
	}
public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id = request.getParameter("id");
		String foodcatid=request.getParameter("foodcategory");
		String foodsubcatid=request.getParameter("foodsubcategory");
		String fooditemprice=request.getParameter("fooditemprice");
		String fooditemname=request.getParameter("fooditemname");
	//String fooditempic=request.getParameter("fooditempic");
		HttpSession session = request.getSession();
        String s=String.valueOf(session.getAttribute("name"));
		
		String fooditemdes=request.getParameter("fooditemdes");
		System.out.println(id);
		
		fooditemVO fooditemVO=new fooditemVO();
		if(id!=null && !id.equals(""))
		fooditemVO.setFooditemid(Long.valueOf(id));
		fooditemVO.setFoodcategoryid(Long.parseLong(foodcatid));
		fooditemVO.setFoodsubcategoryid(Long.parseLong(foodsubcatid));
		fooditemVO.setFooditemname(fooditemname);
	    fooditemVO.setFooditemdes(fooditemdes);
	    fooditemVO.setFooditemprice(fooditemprice);
	    
	    //if(request.getParameter("s")!=null)
	    	 fooditemVO.setFooditempic(s);
	  //  System.out.println("tttt"+s);
	    fooditemDAO fooditemDAO=new fooditemDAO();
		fooditemDAO.update(fooditemVO);
		search(request, response);
	}

	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		 String id =request.getParameter("id");
		
		fooditemVO fooditemVO=new fooditemVO();
		if(id!=null && !id.equals(""))
		fooditemVO.setFooditemid(Long.valueOf(id));
		
		fooditemDAO fooditemDAO=new fooditemDAO();
		fooditemDAO.delete(fooditemVO);
		search(request, response);
	}
public void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id=request.getParameter("id");
		//String foodcategoryname=request.getParameter("foodcategoryname");
		System.out.println(id);
		
		fooditemVO fooditemVO=new fooditemVO();
		
		if(id!=null && !id.equals(""))
		   fooditemVO.setFooditemid(Long.valueOf(id));
		
		fooditemDAO fooditemDAO=new fooditemDAO();
		List ls=fooditemDAO.fetchById(fooditemVO);

		HttpSession session = request.getSession();
		
		session.setAttribute("hdnflag","update");	
		session.setAttribute("fooditemobj", ls.get(0));
		response.sendRedirect("view/addfooditm.jsp");
	}
  

	}

