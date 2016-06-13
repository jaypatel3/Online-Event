package DAO;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.fooditemVO;
import VO.foodsubcatVO;
import VO.stateVO;


public class foodsubcatDAO {
	public void insert(foodsubcatVO foodsubcatVO)
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
		  
		 session.save(foodsubcatVO);
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

public List fetch(foodsubcatVO foodsubcatVO)
{
	
	 Session session = null;
	 List ls = null;
	  try{
	  // This step will read hibernate.cfg.xml 

	  SessionFactory sessionFactory = new 

	Configuration().configure().buildSessionFactory();
	 session =sessionFactory.openSession();
	  //Create new instance of Contact and set 
   
	 Query q = session.createQuery("from foodsubcatVO where foodsubcatname like '"+foodsubcatVO. getFoodsubcatname()+"%'");
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
public void update(foodsubcatVO foodsubcatVO) {
	
	try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction tr=session.beginTransaction();
		session.saveOrUpdate(foodsubcatVO);
		tr.commit();
		session.flush();
		session.close();
			
	}
	catch (Exception e) {
		e.printStackTrace();
	}
}
public List fetchById(foodsubcatVO foodsubcatVO) {

List ls=null;

try{
	SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
	Session session=sessionFactory.openSession();
	
	Query q=session.createQuery("from foodsubcatVO where foodsbubcatid="+ foodsubcatVO.getFoodsbubcatid());
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

public void delete(foodsubcatVO foodsubcatVO) {

try{
	SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
	Session session=sessionFactory.openSession();
	Transaction tr = session.beginTransaction();
	Query q=session.createQuery("delete from foodsubcatVO where foodsbubcatid="+ foodsubcatVO.getFoodsbubcatid());
    q.executeUpdate();
	tr.commit();
	session.flush();
	session.close();
		
}
catch (Exception e) {
	e.printStackTrace();
}

}
public List searchbyCountryID(foodsubcatVO foodsubcatVO){
	List ls=null;
	try{
		
		Session session=null;
		SessionFactory sessionfactory=new Configuration().configure().buildSessionFactory();
		session=sessionfactory.openSession();
		
		System.out.println(foodsubcatVO.getFoodcatid()+ " lllllllllllllllllllll");
		
		String s="from foodsubcatVO where foodcatid= "+foodsubcatVO.getFoodcatid();

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

