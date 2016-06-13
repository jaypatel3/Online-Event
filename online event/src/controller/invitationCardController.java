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
import DAO.foodcatDAO;
import DAO.fooditemDAO;
import DAO.foodsubcatDAO;
import DAO.invitationCardDAO;
import DAO.subcategoryDAO;
import VO.CategoryVO;
import VO.foodcategoryVO;
import VO.fooditemVO;
import VO.foodsubcatVO;
import VO.invitationCardVO;
import VO.subcategoryVO;

/**
 * Servlet implementation class invitationCardController
 */
@WebServlet("/invitationCardController")
public class invitationCardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public invitationCardController() {
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
		CategoryDAO categoryDAO=new CategoryDAO();
		List ls =categoryDAO.fetch(categoryVO);
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
				
				 if (flag== null){
					 response.sendRedirect("view/addInvitationCard.jsp");
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
			subcategoryDAO subcategoryDAO=new subcategoryDAO();
			subcategoryVO subcategoryVO=new subcategoryVO();
		System.out.println("aaaa");
			System.out.println(request.getParameter("country_id"));
			subcategoryVO.setCatId(Long.valueOf(request.getParameter("country_id")));
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			List<subcategoryVO> rs = new ArrayList<subcategoryVO>();
			rs = subcategoryDAO.searchbyCountryID(subcategoryVO);
			out.println("<select id='subcategory' name='subcategory' >");
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
		String catid=request.getParameter("category");
		String subcatid=request.getParameter("subcategory");
		String invitationcardname=request.getParameter("invitationcard");
		//String invitationpic=request.getParameter("invitationcardpic");
		String invitationdesc=request.getParameter("invitationdesc");
		HttpSession session = request.getSession();
        String s=String.valueOf(session.getAttribute("name"));
		
		invitationCardVO invitationCardVO=new invitationCardVO();
		invitationCardVO.setCategory(Long.parseLong(catid));
		invitationCardVO.setSubcategory(Long.parseLong(subcatid));
		invitationCardVO.setInvitationcardname(invitationcardname);
	    invitationCardVO.setInvitationcardpic(s);
	    invitationCardVO.setInvitationcarddes(invitationdesc);
	   
		invitationCardDAO invitationCardDAO=new invitationCardDAO();
		invitationCardDAO.insert(invitationCardVO);
		response.sendRedirect("view/addInvitationCard.jsp");
	}
	public void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		String invitationcardname =request.getParameter("invitationcardname");

		invitationCardVO invitationCardVO= new invitationCardVO();
		invitationCardVO.setInvitationcardname(invitationcardname);
		
		  invitationCardDAO invitationCardDAO = new invitationCardDAO();
		
		List ls =invitationCardDAO.fetch(invitationCardVO);
		HttpSession session = request.getSession();
		session.setAttribute("lsinvitationsearch",ls );
		response.sendRedirect("view/searchInvitationCard.jsp");
		
	}
public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id = request.getParameter("id");
		String catid=request.getParameter("category");
		String subcatid=request.getParameter("subcategory");
		String invitationcardname=request.getParameter("invitationcard");
		//String invitationpic=request.getParameter("invitationcardpic");
		String invitationdesc=request.getParameter("invitationdesc");
		HttpSession session = request.getSession();
        String s=String.valueOf(session.getAttribute("name"));
		
		System.out.println(id);
		invitationCardVO invitationCardVO=new invitationCardVO();
		if(id!=null && !id.equals(""))
		invitationCardVO.setInvitationcardid(Long.valueOf(id));
		invitationCardVO.setCategory(Long.parseLong(catid));
		invitationCardVO.setSubcategory(Long.parseLong(subcatid));
		invitationCardVO.setInvitationcardname(invitationcardname);
	    invitationCardVO.setInvitationcardpic(s);
	    invitationCardVO.setInvitationcarddes(invitationdesc);
		
	    invitationCardDAO invitationCardDAO = new invitationCardDAO();
		invitationCardDAO.update(invitationCardVO);
		search(request, response);
	}

	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		 String id =request.getParameter("id");
		
		invitationCardVO invitationCardVO=new invitationCardVO();
		if(id!=null && !id.equals(""))
		invitationCardVO.setInvitationcardid(Long.valueOf(id));
		
		invitationCardDAO invitationCardDAO=new invitationCardDAO();
		invitationCardDAO.delete(invitationCardVO);
		search(request, response);
	}
public void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id=request.getParameter("id");
		
		System.out.println(id);
		
		invitationCardVO invitationCardVO=new invitationCardVO();
		
		if(id!=null && !id.equals(""))
		   invitationCardVO.setInvitationcardid(Long.valueOf(id));
		
		invitationCardDAO invitationCardDAO=new invitationCardDAO();
		List ls=invitationCardDAO.fetchById(invitationCardVO);

		HttpSession session = request.getSession();
		
		session.setAttribute("hdnflag","update");	
		session.setAttribute("invitationobj", ls.get(0));
		response.sendRedirect("view/addInvitationCard.jsp");
	}
  


}
