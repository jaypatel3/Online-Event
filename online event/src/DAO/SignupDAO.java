package DAO;


import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


import org.hibernate.SessionFactory;


import VO.SignupVO;


public class SignupDAO {
	
	public void insert(SignupVO v)
	{
		
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session = sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.save(v);
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			System.out.println("catch");
		}
	}
	
	public List authentication(SignupVO v)
	{
		 try{
			 	SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		 
			 	Session session = sessionFactory.openSession();
		
			 	Query query = session.createQuery("from SignupVO where userName='"+v.getUsername()+"' and password='"+v.getPassword()+"'");
		 
			 	List list = query.list();
			 	
			 	System.out.println("size - =  - -- " + list.size());
		
			 	return list;
		 	}
			catch(Exception e)
			{
				e.printStackTrace();
				System.out.println("cnt11");
			}
		 return null;
		
	}
	
	
	
/*	public List search(){
		List l = new ArrayList();
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		     
			  Query qr=session.createQuery("from AreaVO");
			  
			  l=qr.list();
			  
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
		public List searc(){
			List c = new ArrayList();
			try
			{
				  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
				  
				  Session session =sessionFactory.openSession();
			     
				  Query qr=session.createQuery("from AreaVO");
				  
				  c=qr.list();
				  
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return c;
}
	public void delete(AreaVO v)
	{
		
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session = sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.delete(v);
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			System.out.println("catch");
		}
		
	}
	public List edit(AreaVO areaVO){
		List l = new ArrayList();
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		     
			  Query qr=session.createQuery("from AreaVO where areaId="+areaVO.getAreaId());
			  
			  l=qr.list();
			  
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	public void update(AreaVO v)
	{
		
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session = sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.saveOrUpdate(v);
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			System.out.println("catch");
		}
	}*/
}