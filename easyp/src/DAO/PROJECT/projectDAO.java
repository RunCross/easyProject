package DAO.PROJECT;

import java.math.BigInteger;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import PO.PROJECT.project;




import util.HibernateUtil;


public class projectDAO {
	
	public void addProject(project pro){

		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.getCurrentSession();
		
		session.save(pro);
			
	}

	public void updateProject(project pro){

		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.getCurrentSession();
		session.update(pro);
	}
	
	public List getProjectList(){
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.getCurrentSession();
		Query query = session.createQuery("from project");
		List proList = query.list();
		return proList;
	}
	
	public project getProject(BigInteger pid){
		project pro = null ;
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.getCurrentSession();
		pro = (project)session.get(project.class, pid);
		return pro;
	}
	
	public void deleteProject(BigInteger pid){
		
		project pro = null ;
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.getCurrentSession();
		pro = (project)session.get(project.class, pid);
		session.delete(pro);
	}

}
