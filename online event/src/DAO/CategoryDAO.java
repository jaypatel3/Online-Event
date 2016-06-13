package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CategoryVO;

public class CategoryDAO {

	public void insert(CategoryVO categoryVO)
	{
		
		 Session session = null;

		  try{
		  // This step will read hibernate.cfg.xml 

		  SessionFactory sessionFactory = new 

		Configuration().configure().buildSessionFactory();
		 session =sessionFactory.openSession();
		  //Create new instance of Contact and set 
         Transaction transaction = session.beginTransaction();
		 System.out.println("Inserting Record");
		  session.save(categoryVO);
		  transaction.commit();
		  System.out.println("Done");
		  }catch(Exception e){
		  e.printStackTrace();
		  }finally{
		  // Actual contact insertion will happen at this step
		//  session.flush();
		//  session.close();

		  }
		
	}
	public List fetch(CategoryVO categoryVO)
	{
		
		 Session session = null;
		 List ls = null;
		  try{
		  // This step will read hibernate.cfg.xml 

		  SessionFactory sessionFactory = new 

		Configuration().configure().buildSessionFactory();
		 session =sessionFactory.openSession();
		  //Create new instance of Contact and set 
       
		 Query q = session.createQuery("from CategoryVO where catName like '"+categoryVO.getCatName()+"%'");
		 
		 ls = q.list();
		 
		 System.out.println("Done");
		  }catch(Exception e){
		  e.printStackTrace();
		  }finally{
		  // Actual contact insertion will happen at this step
		//  session.flush();
		//  session.close();

		  }
		return ls;
	}
public void update(CategoryVO categoryVO) {
		
		try{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction tr=session.beginTransaction();
			session.saveOrUpdate(categoryVO);
			tr.commit();
			session.flush();
			session.close();
				
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
public List fetchById(CategoryVO categoryVO) {
	
	List ls=null;
	
	try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		
		Query q=session.createQuery("from CategoryVO where id ="+ categoryVO.getId());
        ls=q.list();
		
		session.flush();
		session.close();
			
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	return ls;
	
}

public void delete(CategoryVO categoryVO) {
	
	try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		Query q=session.createQuery("delete from CategoryVO where id ="+categoryVO.getId());
        q.executeUpdate();
		tr.commit();
		session.flush();
		session.close();
			
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
}
public List search(CategoryVO categoryVO) {
    List ls=null;

try{
	SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
	Session session=sessionFactory.openSession();
	
	Query q=session.createQuery("from CategoryVO where catName like '"+ categoryVO.getCatName()+"%'");
    ls=q.list();
	
	session.flush();
	session.close();
		
}
catch (Exception e) {
	e.printStackTrace();
}
return ls;
}
public List searc(){
	List l = new ArrayList();
	try
	{
		  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		  
		  Session session =sessionFactory.openSession();
	     
		  Query qr=session.createQuery("from CategoryVO");
		  
		  l=qr.list();
		  
	}
	catch(Exception ex)
	{
		ex.printStackTrace();
	}
	return l;
}
public List search1(){
	List l = new ArrayList();
	try
	{
		  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		  
		  Session session =sessionFactory.openSession();
	     
		  Query qr=session.createQuery("from hotelVO");
		  
		  l=qr.list();
		  
	}
	catch(Exception ex)
	{
		ex.printStackTrace();
	}
	return l;
}
}
