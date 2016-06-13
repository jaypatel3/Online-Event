package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CategoryVO;
import VO.cityVO;
import VO.stateVO;

public class cityDAO {
	public void insert(cityVO cityVO)
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
		  
		 session.save(cityVO);
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
	public List fetch(cityVO cityVO)
	{
		
		 Session session = null;
		 List ls = null;
		  try{
		  // This step will read hibernate.cfg.xml 

		  SessionFactory sessionFactory = new 

		Configuration().configure().buildSessionFactory();
		 session =sessionFactory.openSession();
		  //Create new instance of Contact and set 
       
		 Query q = session.createQuery("from cityVO where cityname like '"+cityVO. getCityname()+"%'");
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

public void update(cityVO cityVO) {
		
		try{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction tr=session.beginTransaction();
			session.saveOrUpdate(cityVO);
			tr.commit();
			session.flush();
			session.close();
				
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
public List fetchById(cityVO cityVO) {
	
	List ls=null;
	
	try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		
		Query q=session.createQuery("from cityVO where cityid ="+ cityVO.getCityid());
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

public void delete(cityVO cityVO) {
	
	try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		Query q=session.createQuery("delete from cityVO where id ="+cityVO.getCityid());
        q.executeUpdate();
		tr.commit();
		session.flush();
		session.close();
			
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
}

public List searchbyCountryID(cityVO cityVO){
	List ls=null;
	try{
		
		Session session=null;
		SessionFactory sessionfactory=new Configuration().configure().buildSessionFactory();
		session=sessionfactory.openSession();
		
		System.out.println(cityVO.getCityid() + " lllllllllllllllllllll");
		
		String s="from cityVO where stateid ="+cityVO.getStateid();

		Query q=session.createQuery(s);
		System.out.println(s);
		//Query q=session.createQuery("from statenm where stateVo like '"+statevo.getstate_nm()+"%'");
		ls=q.list();

		System.out.println("Done");
		session.flush();
		session.close();
	}catch(Exception e){
		e.printStackTrace();
		
	}
	return ls;	
}
}

