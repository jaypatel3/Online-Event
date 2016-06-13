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
import VO.CategoryVO;

/**
 * Servlet implementation class CategoryController
 */
@WebServlet("/CategoryController")
public class CategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public CategoryController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
		String flag = request.getParameter("flag");
			
		 if(flag!=null && flag.equals("delete"))
		 {
			 delete(request, response);
		 }
		 if(flag!=null && flag.equals("edit"))
		 {
			 edit(request, response);
		 }
		 if(flag!=null && flag.equals("allcat"))
		 {
			 
			 CategoryVO cvo = new CategoryVO();
			 CategoryDAO cdao = new CategoryDAO();
			 cvo.setCatName("");
			List  ls =  cdao.search(cvo);
			HttpSession session = request.getSession();
			session.setAttribute("lscategorysearch",ls );
			 response.sendRedirect("uview/listcategory.jsp");
		 }
		 if(flag!=null && flag.equals("allusercat"))
		 {
			 
			 CategoryVO cvo = new CategoryVO();
			 CategoryDAO cdao = new CategoryDAO();
			 cvo.setCatName("");
			List  ls =  cdao.search(cvo);
			HttpSession session = request.getSession();
			session.setAttribute("lsusercategorysearch",ls );
			 response.sendRedirect("uview/userlistcategory.jsp");
		 }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag =request.getParameter("flag");
		if(flag.equals("view"))
		{
			viewCategory(request,response);
			
		}
		
		if(flag!=null && flag.equals("update"))
		{
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
		 if(flag!=null && flag.equals("delete"))
		 {
			 delete(request, response);
		 }
		 if(flag!=null && flag.equals("edit"))
		 {
			 edit(request, response);
		 }
		 if(flag!=null && flag.equals("allcat"))
		 {
			 
			 CategoryVO cvo = new CategoryVO();
			 CategoryDAO cdao = new CategoryDAO();
			 cvo.setCatName("");
			List  ls =  cdao.search(cvo);
			HttpSession session = request.getSession();
			session.setAttribute("lscategorysearch",ls );
			 response.sendRedirect("uview/listcategory.jsp");
		 }
		 if(flag!=null && flag.equals("allusercat"))
		 {
			 
			 CategoryVO cvo = new CategoryVO();
			 CategoryDAO cdao = new CategoryDAO();
			 cvo.setCatName("");
			List  ls =  cdao.search(cvo);
			HttpSession session = request.getSession();
			session.setAttribute("lsusercategorysearch",ls );
			 response.sendRedirect("uview/userlistcategory.jsp");
		 }
		 
	}
	
	private void viewCategory(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String page=request.getParameter("page"); 
		CategoryDAO dao=new CategoryDAO();
		List l=dao.searc();
		HttpSession session=request.getSession();
		session.setAttribute("cat", l);
		response.sendRedirect(page);
		// TODO Auto-generated method stub
		
	}

	public void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		
		System.out.println("=====");
		String catname =request.getParameter("catname");
		String catdesc =request.getParameter("catdesc");

		CategoryVO categoryVO = new CategoryVO();
		categoryVO.setCatName(catname);
		categoryVO.setCatDesc(catdesc);
		
		CategoryDAO categoryDAO = new CategoryDAO();
		categoryDAO.insert(categoryVO);
		response.sendRedirect("view/addcategory.jsp");
	}
	
	public void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		String catname =request.getParameter("catname");

		CategoryVO categoryVO = new CategoryVO();
		categoryVO.setCatName(catname);
		
		CategoryDAO categoryDAO = new CategoryDAO();
		
		List ls =categoryDAO.fetch(categoryVO);
		HttpSession session = request.getSession();
		session.setAttribute("lscategorysearch",ls );
		response.sendRedirect("view/searchcategory.jsp");
		
	}

public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id = request.getParameter("id");
		String catname =request.getParameter("catname");
		String catdesc =request.getParameter("catdesc");
		System.out.println(id);
		CategoryVO categoryVO=new CategoryVO();
		if(id!=null && !id.equals(""))
		categoryVO.setId(Long.valueOf(id));
		categoryVO.setCatName(catname);
		categoryVO.setCatDesc(catdesc);
		
		
		CategoryDAO categoryDAO=new CategoryDAO();
		categoryDAO.update(categoryVO);
		search(request, response);
	}

	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		 String id =request.getParameter("id");
		
		CategoryVO categoryVO=new CategoryVO();
		if(id!=null && !id.equals(""))
		categoryVO.setId(Long.valueOf(id));
		
		CategoryDAO categoryDAO=new CategoryDAO();
		categoryDAO.delete(categoryVO);
		search(request, response);
	}
public void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id=request.getParameter("id");
		
		
		CategoryVO categoryVO=new CategoryVO();
		
		if(id!=null && !id.equals(""))
		   categoryVO.setId(Long.valueOf(id));
		
		CategoryDAO categoryDAO=new CategoryDAO();
		List ls=categoryDAO.fetchById(categoryVO);
		
		HttpSession session=request.getSession();
		session.setAttribute("hdnflag","update");	
		session.setAttribute("catobj", ls.get(0));
			response.sendRedirect("view/addcategory.jsp");
	}
  
}
