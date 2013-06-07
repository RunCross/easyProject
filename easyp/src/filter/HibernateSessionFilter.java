/**
 * HibernateSessionFilter.java Create on Dec 17, 201210:03:19 AM
 * Copyright (c) 2011 by Big Z
 */
package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import util.HibernateUtil;



/**
 *@description:
 *@author bigz
 *@version 1.0
 */

public class HibernateSessionFilter implements Filter {
	
	private SessionFactory sf;

	
	public void destroy() {
		// TODO Auto-generated method stub

	}

	
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		session.beginTransaction();
		chain.doFilter(request, response);
		session.getTransaction().commit();
	}

	
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		sf = HibernateUtil.getSessionFactory();
	}

}
