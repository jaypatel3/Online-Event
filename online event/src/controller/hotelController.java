package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CategoryDAO;
import DAO.addCountryDAO;
import DAO.cityDAO;
import DAO.foodcatDAO;
import DAO.fooditemDAO;
import DAO.galleryDAO;
import DAO.hotelDAO;
import DAO.stateDAO;
import VO.CategoryVO;
import VO.addcountryVO;
import VO.cityVO;
import VO.foodcategoryVO;
import VO.fooditemVO;
import VO.galleryVO;
import VO.hotelVO;
import VO.stateVO;

/**
 * Servlet implementation class hotelController
 */
@WebServlet("/hotelController")
public class hotelController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public hotelController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		addcountryVO countryvo=new addcountryVO();
		countryvo.setCountryname("");
		addCountryDAO countrydao=new addCountryDAO();
		List ls =countrydao.fetch(countryvo);
		HttpSession session = request.getSession();
		session.setAttribute("country",ls);
		
		stateVO statevo=new stateVO();
		statevo.setAddstatename("");
		stateDAO statedao=new stateDAO();
		List ls1=statedao.fetch(statevo);
		HttpSession session1 = request.getSession();
		session1.setAttribute("state",ls1);
				
				cityVO cityvo=new cityVO();
				cityvo.setCityname("");
				cityDAO citydao=new cityDAO();
				List ls2=citydao.fetch(cityvo);
				HttpSession session2 = request.getSession();
				session2.setAttribute("city",ls2);
		
		//update............
		 String flag = request.getParameter("flag");
			
		 if(flag!=null && flag.equals("delete"))
		 {
			 delete(request, response);
		 }
		 if(flag!=null && flag.equals("edit"))
		 {
			 edit(request, response);
		 }
		 if(flag!=null && flag.equals("hotel"))
		 {
			 
			 hotelVO hotelVO = new hotelVO();
			hotelDAO hotelDAO = new hotelDAO();
			 hotelVO.setHotelname("");
			List  rs =hotelDAO.fetch1(hotelVO);
			HttpSession session11 = request.getSession();
			session11.setAttribute("lshotel",rs );
			 response.sendRedirect("uview/hotel.jsp");
		 }
		
		 if(flag== null){
			response.sendRedirect("view/addhotel.jsp");
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

			
			
			stateDAO stateDAO=new stateDAO();
			stateVO statevo=new stateVO();
		//System.out.println("aaaa");
			System.out.println(request.getParameter("country_id"));
			statevo.setCountryId(Long.valueOf(request.getParameter("country_id")));
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			List<stateVO> rs = new ArrayList<stateVO>();
			rs = stateDAO.searchbyCountryID(statevo);
			out.println("<select name='stateid' id='stateid'  onchange='changestate(this)' >");
			out.println("<option value='0'>Select</option>");
			if (rs.isEmpty()) {
				out.println("select");
			} else {
				java.util.Iterator<stateVO> iterator = rs.iterator();
				while (iterator.hasNext()) {
					stateVO stateobj = iterator.next();
					String state = "<option value="+stateobj.getStateid()+">"+stateobj.getAddstatename()+ "</option>";
					out.println(state);
				}
			}
			out.println("</select>");
		}
else if (request.getParameter("state_id") != null) {
	System.out.println("state_id");
	cityDAO cityDAO=new cityDAO();
	cityVO cityVO=new cityVO();
//System.out.println("aaaa");
	System.out.println(request.getParameter("state_id"));
	cityVO.setStateid(Long.valueOf(request.getParameter("state_id")));
	response.setContentType("text/html;charset=UTF-8");
	PrintWriter out = response.getWriter();
	List<cityVO> rs = new ArrayList<cityVO>();
	rs = cityDAO.searchbyCountryID(cityVO);
	out.println("<select name='cityid'  id='cityid' >");
	out.println("<option value='0'>Select</option>");
	if (rs.isEmpty()) {
		out.println("select");
	} else {
		java.util.Iterator<cityVO> iterator = rs.iterator();
		while (iterator.hasNext()) {
			cityVO stateobj = iterator.next();
			String state = "<option value="+stateobj.getCityid()+">"+stateobj.getCityname()+ "</option>";
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
		String phone1=request.getParameter("phone1");
		String phone2=request.getParameter("phone2");
		String fax=request.getParameter("fax");
		String email=request.getParameter("email");
		String hotelname=request.getParameter("hotelname");
		String address1=request.getParameter("address1");
		String address2=request.getParameter("address2");
		String countryid=request.getParameter("countryid");
		String stateid=request.getParameter("stateid");
		String cityid=request.getParameter("cityid");
	//	String hotelPhoto=request.getParameter("hotelPhoto");
		String hoteldescription=request.getParameter("hoteldescription");
		HttpSession session = request.getSession();
        String s=String.valueOf(session.getAttribute("name"));

		hotelVO hotelvo=new hotelVO();
		hotelvo.setCityid(Long.parseLong(cityid));
		hotelvo.setCountryid(Long.parseLong(countryid));
		hotelvo.setStateid(Long.parseLong(stateid));
		hotelvo.setPhone1(Long.parseLong(phone1));
		hotelvo.setPhone2(Long.parseLong(phone2));
		hotelvo.setFax(Long.parseLong(fax));
		hotelvo.setEmail(email);
		hotelvo.setHoteladdress1(address1);
		hotelvo.setHoteladdress2(address2);
		hotelvo.setHotelPhoto(s);
		hotelvo.setHoteldescription(hoteldescription);
		hotelvo.setHotelname(hotelname);
		
		hotelDAO hoteldao=new hotelDAO();
		hoteldao.insert(hotelvo);
		response.sendRedirect("view/addhotel.jsp");
	}
	public void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		String hotelname =request.getParameter("hotelname");

		hotelVO hotelVO = new hotelVO();
		hotelVO.setHotelname(hotelname);
		
		hotelDAO hotelDAO = new hotelDAO();
		
		List ls =hotelDAO.fetch(hotelVO);
		HttpSession session = request.getSession();
		session.setAttribute("lshotelsearch",ls );
		response.sendRedirect("view/searchhotel.jsp");
		
	}
public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id = request.getParameter("id");
		String phone1=request.getParameter("phone1");
		String phone2=request.getParameter("phone2");
		String fax=request.getParameter("fax");
		String email=request.getParameter("email");
		String hotelname=request.getParameter("hotelname");
		String address1=request.getParameter("address1");
		String address2=request.getParameter("address2");
		String countryid=request.getParameter("countryid");
		String stateid=request.getParameter("stateid");
		String cityid=request.getParameter("cityid");
		//String hotelPhoto=request.getParameter("hotelPhoto");
		String hoteldescription=request.getParameter("hoteldescription");
		HttpSession session = request.getSession();
        String s=String.valueOf(session.getAttribute("name"));

		System.out.println(id);
		hotelVO hotelVO=new hotelVO();
		if(id!=null && !id.equals(""))
		hotelVO.setHotelid(Long.valueOf(id));
		hotelVO.setCityid(Long.parseLong(cityid));
		hotelVO.setCountryid(Long.parseLong(countryid));
		hotelVO.setStateid(Long.parseLong(stateid));
		hotelVO.setPhone1(Long.parseLong(phone1));
		hotelVO.setPhone2(Long.parseLong(phone2));
		hotelVO.setFax(Long.parseLong(fax));
		hotelVO.setEmail(email);
		hotelVO.setHoteladdress1(address1);
		hotelVO.setHoteladdress2(address2);
		hotelVO.setHotelPhoto(s);
		hotelVO.setHoteldescription(hoteldescription);
		hotelVO.setHotelname(hotelname);
		
		hotelDAO hotelDAO=new hotelDAO();
		hotelDAO.update(hotelVO);
		search(request, response);
	}

	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		 String id =request.getParameter("id");
		
		hotelVO hotelVO=new hotelVO();
		if(id!=null && !id.equals(""))
		hotelVO.setHotelid(Long.valueOf(id));
		
		hotelDAO hotelDAO=new hotelDAO();
		hotelDAO.delete(hotelVO);
		search(request, response);
	}
public void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id=request.getParameter("id");
		
		System.out.println(id);
		
		hotelVO hotelVO=new hotelVO();
		
		if(id!=null && !id.equals(""))
			hotelVO.setHotelid(Long.valueOf(id));
		
		hotelDAO hotelDAO=new hotelDAO();
		List ls=hotelDAO.fetchById(hotelVO);

		HttpSession session = request.getSession();
		
		session.setAttribute("hdnflag","update");	
		session.setAttribute("hotelobj", ls.get(0));
		response.sendRedirect("view/addhotel.jsp");
	}
  


	}

