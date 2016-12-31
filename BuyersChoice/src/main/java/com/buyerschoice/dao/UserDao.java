package com.buyerschoice.dao;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.buyerschoice.model.User;
import com.buyerschoice.model.UserCredentials;

@Repository
public class UserDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void insert(User user) {
		Session session = sessionFactory.openSession();

		System.out.println("Insert Method Called for User");
		Transaction tx = session.getTransaction();
		tx.begin();
		session.save(user);
		session.flush();
		tx.commit();
		session.close();
	}

	public void insertCred(UserCredentials userCreden) {

		Session session = sessionFactory.openSession();

		System.out.println("Insert Method Called for UserCredentaials");
		Transaction tx = session.getTransaction();
		tx.begin();
		session.save(userCreden);
		session.flush();
		tx.commit();
		session.close();
	}

}