package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.ImageGalleryDAO;

/**
 * Servlet implementation class addimagegallerycontroller
 */
@WebServlet("/addimagegallerycontroller")
public class addimagegallerycontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addimagegallerycontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String s = request.getParameter("id");
	String desc = request.getParameter("desc");
	HttpSession session = request.getSession();
	String fileName = session.getAttribute("name").toString();
	System.out.println("sssssssssssssssssssss"+s + " " + fileName);
	ImageGalleryVO ivo =new ImageGalleryVO();
	ivo.setDesc(desc);
	ivo.setFileName(fileName);
	ivo.setGalId(s);
	ImageGalleryDAO dao = new ImageGalleryDAO();
	dao.insert(ivo);
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	doGet(request, response);
	
	}

}
