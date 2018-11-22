package com.javalec.mysite.util;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionFactoryBean {
	
	private static SqlSessionFactory sessionFactory = null; 
	
	public static SqlSession getSqlSession() {
		try {
			Reader reader = Resources.getResourceAsReader("sql-map-config.xml");
			sessionFactory = new SqlSessionFactoryBuilder().build(reader);
			}catch(Exception e) {
			e.printStackTrace();
		}
		return sessionFactory.openSession();
	}
	
}
