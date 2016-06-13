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
import VO.foodcategoryVO;
import VO.foodsubcatVO;
import VO.hotelVO;
import VO.selectVO;
import VO.subcategoryVO;

import DAO.CategoryDAO;
import DAO.addCountryDAO;
import DAO.foodcatDAO;
import DAO.foodsubcatDAO;
import DAO.hotelDAO;
import DAO.selectDAO;
import DAO.subcategoryDAO;

/**
 * Servlet implementation class SelectController
 */
@WebServlet("/SelectController")
public class SelectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
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
		 else if(flag.equals("submit"))
		 {
			 insertfooditem(request,response);
			 
		 }
		
	}

	private void viewCategory(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		/*System.out.println("hi");
		String page=request.getParameter("page"); 
		CategoryDAO dao=new CategoryDAO();
		List l=dao.searc();
		HttpSession session=request.getSession();
		session.setAttribute("cat", l);
		System.out.println("hi");
		response.sendRedirect("uview/select.jsp");*/
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
				
				
				
				foodcategoryVO foodcategoryVO=new foodcategoryVO();
				foodcategoryVO.setFoodcatName("");
				foodcatDAO foodcatdao=new foodcatDAO();
				List ls2 =foodcatdao.fetch(foodcategoryVO);
				HttpSession session2 = request.getSession();
				session2.setAttribute("foodcategory",ls2);
				
				foodsubcatVO foodsubcatVO=new foodsubcatVO();
				foodsubcatVO.setFoodsubcatname("");
				foodsubcatDAO foodsubcatDAO=new foodsubcatDAO();
				List ls3=foodsubcatDAO.fetch(foodsubcatVO);
				HttpSession session3 = request.getSession();
						session3.setAttribute("foodsubcategory",ls3);
						
						
						hotelVO vo=new hotelVO();
						vo.setHotelname("");
						hotelDAO dao=new hotelDAO();
						
						List ls4=dao.search1();
						HttpSession session4=request.getSession();
						session4.setAttribute("pac", ls4);
				 
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
					 response.sendRedirect("uview/select.jsp");
						
				 }
	
	}

	private void insertfooditem(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("hi");
		String catname=request.getParameter("selectcategory");
		String subcatname=request.getParameter("selectsubcategory");
		String foodcatname=request.getParameter("foodcategory");
		String foodsubcatname=request.getParameter("foodsubcategory");
		String fooditemname=request.getParameter("fooditemname");
		String hotelname=request.getParameter("name");
		
		System.out.println("cat" +catname);
		selectVO selectvo=new selectVO();
		
		selectvo.setCatName(catname);
		selectvo.setSubcatName(subcatname);
		selectvo.setFoodcatName(foodcatname);
		selectvo.setFoodsubcatName(foodsubcatname);
		selectvo.setFooditemName(fooditemname);
		selectvo.setHotelName(hotelname);
		System.out.println("kkkk");
		System.out.println("fooditem" +fooditemname);
		
		selectDAO selectdao=new selectDAO();
		selectdao.insert1(selectvo);
		
		
		response.sendRedirect("uview/index.jsp");
		
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

}
