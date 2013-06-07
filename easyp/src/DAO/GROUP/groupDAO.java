package DAO.GROUP;

import java.math.BigInteger;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import PO.GROUP.groups;

import util.HibernateUtil;


public class groupDAO {


	public void addGroup(groups gro){

		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.getCurrentSession();
		
		session.save(gro);
			
	}

	public void updateGroup(groups gro){

		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.getCurrentSession();
		session.update(gro);
	}
	
	public List getGroupList(){
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.getCurrentSession();
		Query query = session.createQuery("from groups");
		List groList = query.list();
		return groList;
	}
	
	public groups getGroup(BigInteger gid){
		groups gro= null ;
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.getCurrentSession();
		gro = (groups)session.get(groups.class, gid);
		return gro;
	}
	
	public void deleteGroup(BigInteger gid){
		
		groups gro= null ;
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.getCurrentSession();
		gro = (groups)session.get(groups.class, gid);
		session.delete(gro);
	}



}
