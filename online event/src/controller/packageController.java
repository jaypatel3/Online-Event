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
import DAO.packageDAO;
import DAO.subcategoryDAO;
import VO.CategoryVO;
import VO.packageVO;
import VO.subcategoryVO;

/**
 * Servlet implementation class packageController
 */
@WebServlet("/packageController")
public class packageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public packageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		CategoryVO categoryVO=new CategoryVO();
		categoryVO.setCatName("");
		CategoryDAO categorydao=new CategoryDAO();
		List ls =categorydao.fetch(categoryVO);
		HttpSession session = request.getSession();
		session.setAttribute("category",ls);
		
		subcategoryVO subcategoryVO=new subcategoryVO();
		subcategoryVO.setSubcategoryname("");
		subcategoryDAO subcategoryDAO=new subcategoryDAO();
		List ls1=subcategoryDAO.fetch(subcategoryVO);
		HttpSession session1 = request.getSession();
				session1.setAttribute("subcategory",ls1);
				 
				//update............
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
					 response.sendRedirect("view/addpackage.jsp");
						
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
		else if (request.getParameter("country_id") != null) {
			subcategoryDAO subcategorydao=new subcategoryDAO();
			subcategoryVO subcategoryvo1=new subcategoryVO();
		System.out.println("aaaa");
			System.out.println(request.getParameter("country_id"));
			subcategoryvo1.setCatId(Long.valueOf(request.getParameter("country_id")));
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			List<subcategoryVO> rs = new ArrayList<subcategoryVO>();
			rs = subcategorydao.searchbyCountryID(subcategoryvo1);
			out.println("<select id='selectsubcategory' name='selectsubcategory' >");
			out.println("<option value='0'>Select</option>");
			if (rs.isEmpty()) {
				out.println("select");
			} else {
				Iterator<VO.subcategoryVO> iterator = rs.iterator();
				while (iterator.hasNext()) {
					subcategoryVO stateobj = iterator.next();
					String state = "<option value="+stateobj.getSubcatid()+">"+stateobj.getSubcategoryname()+ "</option>";
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
		String catid=request.getParameter("selectcategory");
		String subcatid=request.getParameter("selectsubcategory");
		System.out.println(subcatid);
		String packagename=request.getParameter("packagename");
		String packagedes=request.getParameter("packagedes");
		System.out.println(packagedes);
		packageVO packageVO=new packageVO();
		packageVO.setCategoryid(Long.parseLong(catid));
		packageVO.setSubcategoryid(Long.parseLong(subcatid));
		packageVO.setPackagename(packagename);
	    packageVO.setPackagedes(packagedes);
		packageDAO packagedao=new packageDAO();
		packagedao.insert(packageVO);
		response.sendRedirect("view/addpackage.jsp");
	}	
	public void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		String packagename=request.getParameter("packagename");

		packageVO packageVO = new packageVO();
		packageVO.setPackagename(packagename);
		
		packageDAO packageDAO = new packageDAO();
		
		List ls =packageDAO.fetch(packageVO);
		HttpSession session = request.getSession();
		session.setAttribute("lspackagesearch",ls);
		
		response.sendRedirect("view/searchpackage.jsp");
		
	}
public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id = request.getParameter("id");
		String catid=request.getParameter("selectcategory");
		String subcatid=request.getParameter("selectsubcategory");
		String packagename=request.getParameter("packagename");
		String packagedes=request.getParameter("packagedes");
		System.out.println(id);
		packageVO packageVO=new packageVO();
		if(id!=null && !id.equals(""))
		packageVO.setPackageid(Long.valueOf(id));
		packageVO.setCategoryid(Long.parseLong(catid));
		packageVO.setSubcategoryid(Long.parseLong(subcatid));
		packageVO.setPackagename(packagename);
	    packageVO.setPackagedes(packagedes);
	    
		
		packageDAO packageDAO=new packageDAO();
		packageDAO.update(packageVO);
		search(request, response);
	}

	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		 String id =request.getParameter("id");
		
		packageVO packageVO=new packageVO();
		if(id!=null && !id.equals(""))
		packageVO.setPackageid(Long.valueOf(id));
		
		packageDAO packageDAO=new packageDAO();
		packageDAO.delete(packageVO);
		search(request,response);
	}
public void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id=request.getParameter("id");
		
		System.out.println(id);
		
		packageVO packageVO=new packageVO();
		
		if(id!=null && !id.equals(""))
		   packageVO.setPackageid(Long.valueOf(id));
		
		packageDAO packageDAO=new packageDAO();
		List ls=packageDAO.fetchById(packageVO);

		HttpSession session = request.getSession();
		
		session.setAttribute("hdnflag","update");	
		session.setAttribute("packageobj", ls.get(0));
		response.sendRedirect("view/addpackage.jsp");
	}
  

	}

