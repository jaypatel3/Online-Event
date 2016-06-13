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
import DAO.fooditemDAO;
import DAO.foodsubcatDAO;
import DAO.galleryDAO;
import DAO.hotelDAO;
import DAO.packageDAO;
import DAO.subcategoryDAO;
import VO.CategoryVO;
import VO.fooditemVO;
import VO.foodsubcatVO;
import VO.galleryVO;
import VO.hotelVO;
import VO.packageVO;
import VO.subcategoryVO;

/**
 * Servlet implementation class galleryController
 */
@WebServlet("/galleryController")
public class galleryController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public galleryController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		CategoryVO categoryVO = new CategoryVO();
		categoryVO.setCatName("");
		CategoryDAO categorydao = new CategoryDAO();
		List ls = categorydao.fetch(categoryVO);
		HttpSession session = request.getSession();
		session.setAttribute("category", ls);

		subcategoryVO subcategoryVO = new subcategoryVO();
		subcategoryVO.setSubcategoryname("");
		subcategoryDAO subcategoryDAO = new subcategoryDAO();
		List ls1 = subcategoryDAO.fetch(subcategoryVO);
		HttpSession session1 = request.getSession();
		session1.setAttribute("subcategory", ls1);

		// update............
		String flag = request.getParameter("flag");

		if (flag != null && flag.equals("delete")) {
			delete(request, response);
		}
		if (flag != null && flag.equals("edit")) {
			edit(request, response);
		}
		if (flag != null && flag.equals("search")) {
			search(request, response);
		}
		if (flag != null && flag.equals("gallery1")) {
			galleryVO galleryVO = new galleryVO();
			galleryDAO galleryDAO = new galleryDAO();
			galleryVO.setPhotoname("");
			List rs = galleryDAO.fetch(galleryVO);
			HttpSession session11 = request.getSession();
			session11.setAttribute("lshotel", rs);
			response.sendRedirect("view/gallery.jsp");
		}
		if (flag != null && flag.equals("gallery")) {
			String subcatid = request.getParameter("id");
			galleryVO galleryVO = new galleryVO();
			galleryDAO galleryDAO = new galleryDAO();
			galleryVO.setSubcategoryid(Long.parseLong(subcatid));
			List ls11 = galleryDAO.fetchsubcatid(galleryVO);
			HttpSession session2 = request.getSession();
			session2.setAttribute("lssubcat", ls11);

			response.sendRedirect("uview/listcategory.jsp");
		}

		else {
			if (flag == null) {
				response.sendRedirect("view/addgallery.jsp");
			}
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		System.out.println("flag==  " + flag);
		if (flag != null && flag.equals("update")) {
			System.out.println("updarre");
			update(request, response);
		} else if (flag != null && flag.equals("search")) {
			search(request, response);
		}

		else if (request.getParameter("country_id") != null) {
			subcategoryDAO subcategoryDAO = new subcategoryDAO();
			subcategoryVO subcategoryVO = new subcategoryVO();
			System.out.println("aaaa");
			System.out.println(request.getParameter("country_id"));
			subcategoryVO.setCatId(Long.valueOf(request
					.getParameter("country_id")));
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
					String state = "<option value=" + stateobj.getSubcatid()
							+ ">" + stateobj.getSubcategoryname() + "</option>";
					out.println(state);
				}
			}
			out.println("</select>");
		}

		else if (flag != null && flag.equals("gallery")) {
			String subcat_id = request.getParameter("subcat_id");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html;charset=UTF-8");
			// out.println(subcat_id);
			galleryVO gvo = new galleryVO();
			gvo.setSubcategoryid(Long.parseLong(subcat_id));
			galleryDAO gdao = new galleryDAO();
			List ls = gdao.fetchsubcatid(gvo);

			Iterator it = ls.iterator();
			while (it.hasNext()) {
				gvo = (galleryVO) it.next();
				out.println("<article class='our columns portfolioList photography abstract'> ");
				out.println("<a class='thumbLink' href='singleevent.jsp' title='' > ");
				out.println("<section class='thumbImage'>");

				out.println(" <div><span class='iconWrapper iconLink'></span></div> ");
				out.println("<img src='"
						+ request.getContextPath()
						+ "/images/"
						+ gvo.getPhoto()
						+ "' alt='' class='scale-with-grid'  height='250px' width='187px'/>");
				out.println(" </section>");
				out.println("<section class='thumbText'>");
				out.println("</br><center><a class='button medium burgundy' href='#'>Add Today!</a></center>");
				out.println("<h3 class='sectionTitle'>" + gvo.getPhotoname()
						+ "</h3>");
				out.println("<p>" + gvo.getPhotodes()
						+ " </p></section></a></article> ");

			}
		} else {
			insert(request, response);
		}

	}

	public void insert(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String catid = request.getParameter("category");
		String subcatid = request.getParameter("subcategory");
		String photoname = request.getParameter("photoname");
		// String uploadphoto=request.getParameter("photo");
		String photodes = request.getParameter("photodes");
		HttpSession session = request.getSession();
		String s = String.valueOf(session.getAttribute("name"));
		galleryVO galleryVO = new galleryVO();
		galleryVO.setCategoryid(Long.parseLong(catid));
		galleryVO.setSubcategoryid(Long.parseLong(subcatid));
		galleryVO.setPhotoname(photoname);
		galleryVO.setPhotodes(photodes);
		galleryVO.setPhoto(s);
		galleryDAO gallerydao = new galleryDAO();
		gallerydao.insert(galleryVO);
		response.sendRedirect("view/addgallery.jsp");
	}

	public void search(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String galleryname = request.getParameter("galleryname");

		galleryVO galleryVO = new galleryVO();
		galleryVO.setPhotoname(galleryname);

		galleryDAO galleryDAO = new galleryDAO();

		List ls = galleryDAO.fetch(galleryVO);
		HttpSession session = request.getSession();
		session.setAttribute("lsgallerysearch", ls);
		session.setAttribute("subcat", ls);

		response.sendRedirect("view/searchgallery.jsp");
	}

	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String catid = request.getParameter("category");
		String subcatid = request.getParameter("subcategory");
		String photoname = request.getParameter("photoname");
		// String uploadphoto=request.getParameter("photo");
		String photodes = request.getParameter("photodes");
		HttpSession session = request.getSession();
		String s = String.valueOf(session.getAttribute("name"));
		galleryVO galleryVO = new galleryVO();
		if (id != null && !id.equals(""))
			galleryVO.setGalleryid(Long.valueOf(id));
		galleryVO.setCategoryid(Long.parseLong(catid));
		galleryVO.setSubcategoryid(Long.parseLong(subcatid));
		galleryVO.setPhotoname(photoname);
		galleryVO.setPhotodes(photodes);
		galleryVO.setPhoto(s);
		galleryDAO galleryDAO = new galleryDAO();
		galleryDAO.update(galleryVO);
		search(request, response);
	}

	public void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		System.out.println(id);
		galleryVO galleryVO = new galleryVO();
		if (id != null && !id.equals(""))
			galleryVO.setGalleryid(Long.valueOf(id));

		galleryDAO galleryDAO = new galleryDAO();
		galleryDAO.delete(galleryVO);
		search(request, response);
	}

	public void edit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		// String foodcategoryname=request.getParameter("foodcategoryname");
		System.out.println(id);

		galleryVO galleryVO = new galleryVO();

		if (id != null && !id.equals(""))
			galleryVO.setGalleryid(Long.valueOf(id));

		galleryDAO galleryDAO = new galleryDAO();
		List ls = galleryDAO.fetchById(galleryVO);

		HttpSession session = request.getSession();

		session.setAttribute("hdnflag", "update");
		session.setAttribute("galleryobj", ls.get(0));
		response.sendRedirect("view/addgallery.jsp");
	}

}
