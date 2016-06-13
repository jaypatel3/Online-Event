package controller;

import java.io.IOException;
import java.net.URI;
import java.util.Iterator;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import DAO.SignupDAO;
import VO.SignupVO;

 

/**
 * Servlet Filter implementation class loginController
 */
@WebFilter("/hgf")
public class LoginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
		
		HttpSession session =((HttpServletRequest) request).getSession();
		RequestDispatcher requestDispatcher;
		String logout = request.getParameter("logout");
		String reg = request.getParameter("reg");
		String flag = request.getParameter("flag");
		System.out.println("registration flag===" + reg);
		System.out.println("login flag flag===" + flag);
		//	int i = (Integer)session.getAttribute("userID");
		//System.out.println("id = = = = =" + i);
		String uri = ((HttpServletRequest)request).getRequestURI();
		
		
		System.out.println("link =  = = = = " + uri);
		
		if(uri.contains("signup")||uri.contains("/css")||uri.contains("/ucss")||uri.contains("/doc") || uri.contains("/js")&&!uri.contains("jsp")|| uri.contains("/ujs")&&!uri.contains("jsp")|| uri.contains("/uimages")|| uri.contains("/images")|| uri.contains("/fonts")||uri.contains("Controller"))
		{
			System.out.println("inside reg");
			
			
			//requestDispatcher = request.getRequestDispatcher("/user/register.jsp");  
			//requestDispatcher.forward(request,response);  
			
			chain.doFilter(request,response);
			
		}
		
		else if (logout!= null) {
			//session.removeAttribute("userID");
			System.out.println("logout in else if");
	
			session.invalidate();
			System.out.println("after session invalidates");
			RequestDispatcher rd;
			rd = request.getRequestDispatcher("/login.jsp");
			rd.forward(request, response);
			
		}
		else if(request.getParameter("flag") != null && request.getParameter("flag").equals("login") )
		{
			System.out.println("loginnnnnnnnnnnnnnn flaggggggggggggggggggggggg");
			String userName = request.getParameter("userName");
			String password = request.getParameter("password");
			System.out.println(userName+""+password);
			
			SignupVO registrationMstVO = new SignupVO();
			registrationMstVO.setUsername(userName);
			registrationMstVO.setPassword(password);
			
			SignupDAO registrationMstDAO = new SignupDAO();
			List list =  registrationMstDAO.authentication(registrationMstVO);
			
		
			if(list != null && list.size()>=1){
				
				Iterator itr = list.iterator();
				
				//while(itr.hasNext()){
				SignupVO user=(SignupVO) itr.next();
				
				int y = (Integer)user.getSignupId();
				session.setAttribute("userID",y);
				
				System.out.println(user.getUserType());
			//	System.out.println(session.getAttribute("userId"));
				String type = user.getUserType();
				//String firstName=user.getFirstName();
				//String lastName= user.getLastName();
				//String img= user.getProfilePic();
				session.setAttribute("usertype",type);
				//session.setAttribute("firstName",firstName);
				//session.setAttribute("lastName",lastName);
				//session.setAttribute("img",img);
				System.out.println("id==================" + y);
				System.out.println("type================" + type);
				if(type.equals("user"))
				{
					System.out.println("%%%%%%user%%%%%%%");
				requestDispatcher = request.getRequestDispatcher("/LoginController");  
				requestDispatcher.forward(request,response);  
				}
				else
				{
				System.out.println("%%%%%%admin%%%%%%%");
				requestDispatcher = request.getRequestDispatcher("/LoginController");  
				System.out.println("%%%%%%admin2%%%%%%%");
				requestDispatcher.forward(request,response);  
				System.out.println("%%%%%%admin3%%%%%%%");
				}
				}
		
			
			else{
					requestDispatcher = request.getRequestDispatcher("/signin.jsp");  
					requestDispatcher.forward(request,response);  		
				}	
		}
		
		else if(session.getAttribute("userID") != null)
		{
			String h = (String)session.getAttribute("usertype");
			System.out.println("type = = = " + h);
			
			if(h!=null && h.equals("admin") && uri.contains("/view")){
				
			System.out.println("chain");
			chain.doFilter(request,response);
			}
			
			else if(h!=null && h.equals("user") && uri.contains("/uview"))
			{
				System.out.println("chain");
				chain.doFilter(request, response);
			}
			else{
				RequestDispatcher rd = request.getRequestDispatcher("/uview/signin.jsp");  
				rd.forward(request,response);  
	
				
			}
		}
		else{
			
		
			
			RequestDispatcher rd = request.getRequestDispatcher("/uview/signin.jsp");  
			rd.forward(request,response);  
			
			}
		
		
		
		
		
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
