package DAO.USER;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import util.HibernateUtil;
import PO.USER.user;

public class userDAO {
	private Connection conn = null;
	private Statement stm = null;
	private ResultSet rs = null;
	private PreparedStatement pstm = null;
	
	public user  getuser(Long id){
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.getCurrentSession();
		user ur=(user)session.load(user.class,id);	
		
		return ur;
	}
	
	
	public List getuserlist(){
		
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.getCurrentSession();
		Query query = session.createQuery("from user");
		List userList = query.list();
		return userList;
	}
}
