package DAO;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


import VO.cityVO;
import VO.fooditemVO;
import VO.galleryVO;
import VO.invitationCardVO;

public class invitationCardDAO {
	public void insert(invitationCardVO invitationCardVO)
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
		  
		 session.save(invitationCardVO);
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
		  public List fetch(invitationCardVO invitationCardVO)
			{
				
				 Session session = null;
				 List ls = null;
				  try{
				  // This step will read hibernate.cfg.xml 

				  SessionFactory sessionFactory = new 

				Configuration().configure().buildSessionFactory();
				 session =sessionFactory.openSession();
				  //Create new instance of Contact and set 
		       
				 Query q = session.createQuery("from invitationCardVO where invitationcardname like '"+invitationCardVO. getInvitationcardname()+"%'");
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
		  public void update(invitationCardVO invitationCardVO) {
				
				try{
					SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
					Session session=sessionFactory.openSession();
					Transaction tr=session.beginTransaction();
					session.saveOrUpdate(invitationCardVO);
					tr.commit();
					session.flush();
					session.close();
						
				}
				catch (Exception e) {
					e.printStackTrace();
				}
			}
		public List fetchById(invitationCardVO invitationCardVO) {
			
			List ls=null;
			
			try{
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				Session session=sessionFactory.openSession();
				
				Query q=session.createQuery("from invitationCardVO where invitationcardid="+invitationCardVO.getInvitationcardid());
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

		public void delete(invitationCardVO invitationCardVO) {
			
			try{
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				Session session=sessionFactory.openSession();
				Transaction tr = session.beginTransaction();
				Query q=session.createQuery("delete from invitationCardVO where invitationcardid="+invitationCardVO.getInvitationcardid());
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
