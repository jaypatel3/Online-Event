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
import DAO.foodcatDAO;
import VO.CategoryVO;
import VO.foodcategoryVO;

/**
 * Servlet implementation class userhomeController
 */
@WebServlet("/userhomeController")
public class userhomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userhomeController() {
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
		List ls=categoryDAO.fetch(categoryVO);
		HttpSession session = request.getSession();
		session.setAttribute("lscategorysearch1234",ls );
		System.out.println(ls.size());
		
		
		foodcategoryVO foodcategoryVO=new foodcategoryVO();
		foodcategoryVO.setFoodcatName("");
		foodcatDAO foodcatDAO=new foodcatDAO();
		List ls1=foodcatDAO.fetch(foodcategoryVO);
		HttpSession session1 = request.getSession();
		session.setAttribute("lsfoodcategorysearch1234",ls1);
		
		response.sendRedirect("uview/index.jsp");
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
