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
import DAO.addCountryDAO;
import DAO.foodcatDAO;
import VO.CategoryVO;
import VO.addcountryVO;
import VO.foodcategoryVO;

/**
 * Servlet implementation class foodcategoryController
 */
@WebServlet("/foodcategoryController")
public class foodcategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public foodcategoryController() {
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
		 if(flag!=null && flag.equals("allfoodcat"))
		 {
			 
			 foodcategoryVO foodcategoryVO = new foodcategoryVO();
			 foodcatDAO foodcatDAO = new foodcatDAO();
			 foodcategoryVO.setFoodcatName("");
			List  ls = foodcatDAO.fetch(foodcategoryVO);
			HttpSession session = request.getSession();
			session.setAttribute("lsfoodcat567",ls );
			 response.sendRedirect("uview/listfood1.jsp");
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
		
		String s1=request.getParameter("foodcatname");
		String s2=request.getParameter("foodcatdes");
		
		foodcategoryVO foodcategoryVO=new foodcategoryVO();
		foodcategoryVO.setFoodcatName(s1);
		foodcategoryVO.setFoodcatDes(s2);
		
		foodcatDAO foodcatDAO=new foodcatDAO();
		foodcatDAO.insert(foodcategoryVO);
		response.sendRedirect("view/addfoodcat.jsp");
	}
	public void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		String foodcatname =request.getParameter("foodcatname");

		foodcategoryVO foodcategoryVO = new foodcategoryVO();
		foodcategoryVO.setFoodcatName(foodcatname);
		
		foodcatDAO foodcatDAO = new foodcatDAO();
		
		List ls =foodcatDAO.fetch(foodcategoryVO);
		HttpSession session = request.getSession();
		session.setAttribute("lsfoodcatsearch",ls );
		response.sendRedirect("view/searchfoodcat.jsp");
		
	}
	public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		HttpSession session=request.getSession();
			String id = request.getParameter("id");
			String s1=request.getParameter("foodcatname");
			String s2=request.getParameter("foodcatdes");
			
			
			foodcategoryVO foodcategoryVO=new foodcategoryVO();
			if(id!=null && !id.equals(""))
			foodcategoryVO.setFoodcatid(Long.parseLong(id));
			foodcategoryVO.setFoodcatName(s1);
			foodcategoryVO.setFoodcatDes(s2);
			
			foodcatDAO foodcatDAO=new foodcatDAO();
			foodcatDAO.update(foodcategoryVO);
			System.out.println(id);
			
			search(request, response);
		}

		public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
			
			 String id =request.getParameter("id");
			
			foodcategoryVO foodcategoryVO=new foodcategoryVO();
			if(id!=null && !id.equals(""))
			foodcategoryVO.setFoodcatid(Long.valueOf(id));
			
			foodcatDAO foodcatDAO=new foodcatDAO();
			foodcatDAO.delete(foodcategoryVO);
			search(request, response);
		}
	public void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
			
			String id=request.getParameter("id");
			
			
			foodcategoryVO foodcategoryVO=new foodcategoryVO();
			
			if(id!=null && !id.equals(""))
			   foodcategoryVO.setFoodcatid(Long.valueOf(id));
			
			foodcatDAO foodcatDAO=new foodcatDAO();
			List ls=foodcatDAO.fetchById(foodcategoryVO);
			
			HttpSession session=request.getSession();
			List ls1 =foodcatDAO.fetch(foodcategoryVO);
			session.setAttribute("foodcategory",ls1 );
			session.setAttribute("hdnflag","update");	
			session.setAttribute("foodcatobj", ls.get(0));
				response.sendRedirect("view/addfoodcat.jsp");
		}


}
