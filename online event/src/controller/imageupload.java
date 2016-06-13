package controller;
import java.io.File;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
@WebServlet("/imageupload")
public class imageupload extends HttpServlet {
   
   private boolean isMultipart;
   private String filePath;
   private int maxFileSize = 5000 * 1024;
   private int maxMemSize = 40 * 1024;
   private File photo ;

   public void init( ){
      // Get the file location where it would be stored.
	    
   }
   public void doPost(HttpServletRequest request, 
               HttpServletResponse response)
              throws ServletException, java.io.IOException {
      // Check that we have a file upload request
	   
	   filePath = getServletContext().getRealPath(request.getServletPath());
	   int path = filePath.lastIndexOf('\\');
	   String path1= filePath.substring(0, path) +"\\images\\";
	   System.out.println(path1);
	   filePath =path1;
	   HttpSession session1 = request.getSession();
	   session1.setAttribute("url", path1);
	  
	   isMultipart = ServletFileUpload.isMultipartContent(request);
      response.setContentType("text/html");
      java.io.PrintWriter out = response.getWriter( );
      if( !isMultipart )
      {
         out.println("<html>");
         out.println("<head>");
         out.println("<title>Servlet upload</title>");  
         out.println("</head>");
         out.println("<body>");
         out.println("<p>No file uploaded</p>"); 
         out.println("</body>");
         out.println("</html>");
         return;
      }
      DiskFileItemFactory factory = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      // Location to save data that is larger than maxMemSize.
      System.out.println("hhh"+filePath.substring(0, path));
      factory.setRepository(new File(filePath.substring(0, path) +"\\temp"));

      // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      // maximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );

      try{ 
      // Parse the request to get file items.
      List fileItems = upload.parseRequest(request);
	
      // Process the uploaded file items
      Iterator i = fileItems.iterator();

      out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet upload</title>");  
      out.println("</head>");
      out.println("<body>");
      while ( i.hasNext () ) 
      {
         FileItem fi = (FileItem)i.next();
         if ( !fi.isFormField () )	
         {
            // Get the uploaded file parameters
            String fieldName = fi.getFieldName();
            String fileName = fi.getName();
            String contentType = fi.getContentType();
            boolean isInMemory = fi.isInMemory();
            long sizeInBytes = fi.getSize();
            // Write the file
            //String filePath  = request.getServletPath();
            HttpSession session = request.getSession();
            
            session.setAttribute("name", fileName);
            	

            
            if( fileName.lastIndexOf("\\") >= 0 ){
               photo = new File( filePath + 
               fileName.substring( fileName.lastIndexOf("\\"))) ;
            }else{
               photo = new File( filePath + 
               fileName.substring(fileName.lastIndexOf("\\")+1)) ;
            }
            fi.write( photo ) ;
            
            //out.println("Uploaded Filename: " + fileName + "<br>");
            //System.out.println(photo.getAbsolutePath());
            out.println("<img src='"+request.getContextPath()+"/images/"+fileName+"' alt='' style='height: 100%;width:100%'></img>");
            
         
         }
      }
      out.println("</body>");
      out.println("</html>");
      
    //  response.sendRedirect("imagedb.jsp");
   }catch(Exception ex) {
       System.out.println(ex);
   }
   }
   public void doGet(HttpServletRequest request, 
                       HttpServletResponse response)
        throws ServletException, java.io.IOException {
        
        throw new ServletException("GET method used with " +
                getClass( ).getName( )+": POST method required.");
   } 
}