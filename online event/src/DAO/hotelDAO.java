package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.fooditemVO;
import VO.galleryVO;
import VO.hotelVO;

public class hotelDAO {
	public void insert(hotelVO hotelVO)
	{
		
		 

		  try{
		  // This step will read hibernate.cfg.xml 

			  SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			  
		  //SessionFactory sessionFactory = new 

		//Configuration().configure().buildSessionFactory();
		  Session session=sessionFactory.openSession();
			  //Session session=sessionFactory.openSession();
		  //Create new instance of Contact and set 
         Transaction transaction=session.beginTransaction();
		  //Transaction transaction = session.beginTransaction();
		 System.out.println("Inserting Record");
		  
		 session.save(hotelVO);
		 transaction.commit();
		 //transaction.commit();
		  System.out.println("Done");
		  session.flush();
		  session.close();
		  }catch(Exception e){
		  e.printStackTrace();
		  }finally{
		  // Actual contact insertion will happen at this step
		//  session.flush();
		//  session.close();

		  }
	}
	public List fetch(hotelVO hotelVO)
	{
		
		 Session session = null;
		 List ls = null;
		  try{
		  // This step will read hibernate.cfg.xml 

		  SessionFactory sessionFactory = new 

		Configuration().configure().buildSessionFactory();
		 session =sessionFactory.openSession();
		  //Create new instance of Contact and set 
       
		 Query q = session.createQuery("from hotelVO where hotelname like '"+hotelVO. getHotelname()+"%'");
		 System.out.println("fetch");
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
	public List fetch1(hotelVO hotelVO)
	{
		
		 Session session = null;
		 List ls = null;
		  try{
		  // This step will read hibernate.cfg.xml 

		  SessionFactory sessionFactory = new 

		Configuration().configure().buildSessionFactory();
		 session =sessionFactory.openSession();
		  //Create new instance of Contact and set 
       
		 Query q = session.createQuery("from hotelVO hvo , cityVO cvo , stateVO svo, addcountryVO cunvo where hvo.hotelname like '"+hotelVO. getHotelname()+"%' and cvo.cityid = hvo.cityid and hvo.stateid = svo.stateid and hvo.countryid=cunvo.countryid");
		 System.out.println("fetch");
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

	public void update(hotelVO hotelVO) {
		
		try{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction tr=session.beginTransaction();
			session.saveOrUpdate(hotelVO);
			tr.commit();
			session.flush();
			session.close();
				
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
public List fetchById(hotelVO hotelVO) {
	
	List ls=null;
	
	try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		
		Query q=session.createQuery("from hotelVO where hotelid="+ hotelVO.getHotelid());
        ls=q.list();
		
		session.flush();
		session.close();
		System.out.println("done");
			
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	return ls;
	
}

public void delete(hotelVO hotelVO) {
	
	try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		Query q=session.createQuery("delete from hotelVO where hotelid="+hotelVO.getHotelid());
        q.executeUpdate();
		tr.commit();
		session.flush();
		session.close();
			
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
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
