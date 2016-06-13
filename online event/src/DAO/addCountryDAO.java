package DAO;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


import VO.addcountryVO;



public class addCountryDAO {
	public void insert(addcountryVO addcountryvo)
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
		  session.save(addcountryvo);
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
	public List fetch(addcountryVO addcountryVO)
	{
		
		 Session session = null;
		 List ls = null;
		  try{
		  // This step will read hibernate.cfg.xml 

		  SessionFactory sessionFactory = new 

		Configuration().configure().buildSessionFactory();
		 session =sessionFactory.openSession();
		  //Create new instance of Contact and set 
       
		
		 Query q = session.createQuery("from addcountryVO where countryname like '"+addcountryVO.getCountryname()+"%'");
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
public void update(addcountryVO addcountryVO) {
		
		try{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction tr=session.beginTransaction();
			session.saveOrUpdate(addcountryVO);
			tr.commit();
			session.flush();
			session.close();
				
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
public List fetchById(addcountryVO addcountryVO) {
	
	List ls=null;
	
	try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		
		Query q=session.createQuery("from addcountryVO where countryid =" +addcountryVO.getCountryid());
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

public void delete(addcountryVO addcountryVO) {
	
	try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		Query q=session.createQuery("delete from addcountryVO where countryid ="+addcountryVO.getCountryid());
        q.executeUpdate();
		tr.commit();
		session.flush();
		session.close();
			
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
}

}



