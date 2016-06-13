package DAO;

import org.hibernate.Query;

import java.io.Serializable;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.adminVO;



public class adminDAO implements Serializable{
public void insert(adminVO adminVO)
{
	try{
		SessionFactory factory= new Configuration().configure().buildSessionFactory();
		Session session= factory.openSession();
		Transaction transaction=session.beginTransaction();
		session.save(adminVO);
		transaction.commit();
		session.flush();
		session.close();
	}
	catch(Exception e){
		e.printStackTrace();
	}
}

public List fetch(adminVO adminVO){
	List ls=null;
	try{
		Session session=null;
		SessionFactory sessionfactory=new Configuration().configure().buildSessionFactory();
		session=sessionfactory.openSession();
		System.out.println(adminVO.getUsername()+"kk");
		

	
	Query q=session.createQuery("from adminVO where username like '"+adminVO.getUsername()+"' and password like '"+adminVO.getPassword()+"' ");
	
	
	ls=q.list();
		session.flush();
		session.close();
	}catch(Exception e){
		e.printStackTrace();
		
	}
	return ls;	
}
public List searchpassword(adminVO adminVO){
	List ls=null;
	try{
		Session session=null;
		SessionFactory sessionfactory=new Configuration().configure().buildSessionFactory();
		session=sessionfactory.openSession();
		System.out.println(adminVO.getUsername()+"kk");
		

	
	Query q=session.createQuery("from adminVO where username like '"+adminVO.getUsername()+"' ");
	
	
	ls=q.list();
		session.flush();
		session.close();
	}catch(Exception e){
		e.printStackTrace();
		
	}
	return ls;	
}
}