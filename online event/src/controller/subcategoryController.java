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
import VO.subcategoryVO;
import DAO.CategoryDAO;
import DAO.subcategoryDAO;

/**
 * Servlet implementation class subcategoryController
 */
@WebServlet("/subcategoryController")
public class subcategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public subcategoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		CategoryVO categoryVO = new CategoryVO();
		categoryVO.setCatName("");
		CategoryDAO categoryDAO = new CategoryDAO();
		List ls =categoryDAO.fetch(categoryVO);
		HttpSession session = request.getSession();
		session.setAttribute("lscategory",ls );
		
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
		 else if(flag!=null && flag.equals("subcat"))
		 {
			 String id=request.getParameter("id");
			 subcategoryVO subcategoryVO=new subcategoryVO();
			 subcategoryDAO subcategoryDAO=new subcategoryDAO();
			 subcategoryVO.setCatId(Long.valueOf(id));
			 List r=subcategoryDAO.searchbyCountryID(subcategoryVO);
				HttpSession session1 = request.getSession();
				
				
				session1.setAttribute("subcat",r);
				response.sendRedirect("uview/listcategory.jsp");
		 }
		 else if(flag!=null && flag.equals("subcat1"))
		 {
			 String id=request.getParameter("id");
			 subcategoryVO subcategoryVO=new subcategoryVO();
			 subcategoryDAO subcategoryDAO=new subcategoryDAO();
			 subcategoryVO.setCatId(Long.valueOf(id));
			 List r=subcategoryDAO.searchbyCountryID(subcategoryVO);
				HttpSession session1 = request.getSession();
				
				
				session1.setAttribute("usersubcat",r);
				response.sendRedirect("uview/userlistcategory.jsp");
		 }
		 else{
			 response.sendRedirect("view/addsubcategory.jsp");
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
		String catid=request.getParameter("selectcat");
		String subcatname=request.getParameter("subcategoryname");
		String subcatdes=request.getParameter("subcatdes");
		
		subcategoryVO subcategoryVO=new subcategoryVO();
		subcategoryVO.setCatId(Long.parseLong(catid));
		subcategoryVO.setSubcategoryname(subcatname);
		subcategoryVO.setSubcatdes(subcatdes);
		
		subcategoryDAO subcategorydao=new subcategoryDAO();
		subcategorydao.insert(subcategoryVO);
		response.sendRedirect("view/addsubcategory.jsp");
	}
	
	public void search(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
	{

		String subcatname=request.getParameter("subcatname");

		subcategoryVO subcategoryvo=new subcategoryVO();
		subcategoryvo.setSubcategoryname(subcatname);
		
		subcategoryDAO subcategoryDAO = new subcategoryDAO();
		
		List ls =subcategoryDAO.fetch(subcategoryvo);
		HttpSession session = request.getSession();
		session.setAttribute("lssubcategorysearch",ls);
		response.sendRedirect("view/searchsubcategory.jsp");
		
	}
public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id = request.getParameter("id");
		String catid=request.getParameter("selectcat");
		String subcatname=request.getParameter("subcategoryname");
		String subcatdes=request.getParameter("subcatdes");
		
		System.out.println(id);
		subcategoryVO subcategoryVO=new subcategoryVO();
		if(id!=null && !id.equals(""))
		subcategoryVO.setSubcatid(Long.valueOf(id));
		subcategoryVO.setCatId(Long.parseLong(catid));
		subcategoryVO.setSubcategoryname(subcatname);
	    subcategoryVO.setSubcatdes(subcatdes);
	   
		subcategoryDAO subcategoryDAO=new subcategoryDAO();
		subcategoryDAO.update(subcategoryVO);
		search(request, response);
	}

	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		 String id =request.getParameter("id");
		System.out.println(id);
		subcategoryVO subcategoryVO=new subcategoryVO();
		if(id!=null && !id.equals(""))
		subcategoryVO.setSubcatid(Long.valueOf(id));
		
		subcategoryDAO subcategoryDAO=new subcategoryDAO();
		subcategoryDAO.delete(subcategoryVO);
		search(request,response);
	}
public void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id=request.getParameter("id");
		
		System.out.println(id);
		
	subcategoryVO subcategoryVO=new subcategoryVO();
		
		if(id!=null && !id.equals(""))
		   subcategoryVO.setSubcatid(Long.valueOf(id));
		
		subcategoryDAO subcategoryDAO=new subcategoryDAO();
		List ls=subcategoryDAO.fetchById(subcategoryVO);
		HttpSession session = request.getSession();
		
		session.setAttribute("hdnflag","update");	
		session.setAttribute("subcatobj", ls.get(0));
		response.sendRedirect("view/addsubcategory.jsp");
	}

}
