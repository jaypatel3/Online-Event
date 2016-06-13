package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.addCountryDAO;
import DAO.foodcatDAO;
import DAO.fooditemDAO;
import DAO.foodsubcatDAO;
import DAO.stateDAO;
import DAO.subcategoryDAO;
import VO.addcountryVO;
import VO.foodcategoryVO;
import VO.fooditemVO;
import VO.foodsubcatVO;
import VO.stateVO;
import VO.subcategoryVO;

/**
 * Servlet implementation class foodsubcatController
 */
@WebServlet("/foodsubcatController")
public class foodsubcatController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public foodsubcatController() {
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
		foodcatDAO foodcatDAO=new foodcatDAO();
		List ls=foodcatDAO.fetch(foodcategoryVO);
		HttpSession session = request.getSession();
		session.setAttribute("lsfoodsubcat",ls);
		
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
		 else if(flag!=null && flag.equals("allfoodcat"))
		 {
			 String id=request.getParameter("id");
			 foodsubcatVO foodsubcatVO=new foodsubcatVO();
			 foodsubcatDAO foodsubcatDAO=new foodsubcatDAO();
			 foodsubcatVO.setFoodsbubcatid(Long.valueOf(id));
			 List r=foodsubcatDAO.searchbyCountryID(foodsubcatVO);
				HttpSession session1 = request.getSession();
				
				
				session1.setAttribute("foodsubcat",r);
				response.sendRedirect("uview/listfoodcat.jsp");
		 }
		 
		 else{
			 response.sendRedirect("view/addfoodsubcat.jsp");
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
			search(request,response);
		}
		else
		{
			insert(request,response);
		}
	}
		public void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		{
		String foodcateId=request.getParameter("foodcate");
		String foodsubcateName=request.getParameter("foodsubcatname");
		String foodsubcatDes=request.getParameter("foodsubcatdes");
		
		foodsubcatVO foodsubcatVO=new foodsubcatVO();
		foodsubcatVO.setFoodcatid(Long.parseLong(foodcateId));
		foodsubcatVO.setFoodsubcatname(foodsubcateName);
		foodsubcatVO.setFoodsubcatdes(foodsubcatDes);
		
		foodsubcatDAO foodsubcatDAO=new foodsubcatDAO();
		foodsubcatDAO.insert(foodsubcatVO);
		response.sendRedirect("view/addfoodsubcat.jsp");
		}
		public void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		{

			String foodsubcatname =request.getParameter("foodsubcatname");

			foodsubcatVO foodsubcatVO = new foodsubcatVO();
			foodsubcatVO.setFoodsubcatname(foodsubcatname);
			
			foodsubcatDAO foodsubcatDAO = new foodsubcatDAO();
			
			List ls =foodsubcatDAO.fetch(foodsubcatVO);
			HttpSession session = request.getSession();
			session.setAttribute("lsfoodsubcatsearch",ls );
		response.sendRedirect("view/searchfoodsubcat.jsp");
			
		}
		public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
			
			String id = request.getParameter("id");
			String foodcateId=request.getParameter("foodcate");
			String foodsubcateName=request.getParameter("foodsubcatname");
			String foodsubcatDes=request.getParameter("foodsubcatdes");
			
			System.out.println(id);
			foodsubcatVO foodsubcatVO=new foodsubcatVO();
			if(id!=null && !id.equals(""))
			foodsubcatVO.setFoodsbubcatid(Long.valueOf(id));
			foodsubcatVO.setFoodcatid(Long.parseLong(foodcateId));
			
			foodsubcatVO.setFoodsubcatname(foodsubcateName);
		    foodsubcatVO.setFoodsubcatdes(foodsubcatDes);
		   
			foodsubcatDAO foodsubcatDAO=new foodsubcatDAO();
			foodsubcatDAO.update(foodsubcatVO);
			search(request, response);
		}

		public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
			
			 String id =request.getParameter("id");
			
			foodsubcatVO foodsubcatVO=new foodsubcatVO();
			if(id!=null && !id.equals(""))
			foodsubcatVO.setFoodsbubcatid(Long.valueOf(id));
			
			foodsubcatDAO foodsubcatDAO=new foodsubcatDAO();
			foodsubcatDAO.delete(foodsubcatVO);
			search(request,response);
		}
	public void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
			
			String id=request.getParameter("id");
			
			System.out.println(id);
			
			foodsubcatVO foodsubcatVO=new foodsubcatVO();
			
			if(id!=null && !id.equals(""))
			   foodsubcatVO.setFoodsbubcatid(Long.valueOf(id));
			
			foodsubcatDAO foodsubcatDAO=new foodsubcatDAO();
			List ls=foodsubcatDAO.fetchById(foodsubcatVO);
			HttpSession session = request.getSession();
			
			session.setAttribute("hdnflag","update");	
			session.setAttribute("foodsubcatobj", ls.get(0));
			response.sendRedirect("view/addfoodsubcat.jsp");
		}
	  }


