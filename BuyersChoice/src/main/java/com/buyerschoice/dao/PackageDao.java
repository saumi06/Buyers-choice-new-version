package com.buyerschoice.dao;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.google.gson.Gson;
import com.buyerschoice.model.Package;
import javax.servlet.*;

@Repository
public class PackageDao {
	

		@Autowired
		private SessionFactory sessionFactory;
		
				
		public void insert(Package pack) {
			Session session =sessionFactory.openSession();
			//session.save(package);
			System.out.println("Insert Method Called");
			Transaction tx=session.getTransaction();
			tx.begin();
			session.save(pack);
			tx.commit();
			session.close();
	}
		public String Retrive()
		{
			Session connection=sessionFactory.openSession();
			Transaction tx=connection.getTransaction();
			tx.begin();
		
			 List listdata = connection.createQuery("FROM Package").list();
			 Gson gson = new Gson();
			 String jsonNames = gson.toJson(listdata);
			 tx.commit();
			 connection.close();
		     return jsonNames;

		}
		

		public void Delete(Integer pid) {
			Session session =sessionFactory.openSession();
			Transaction tx=session.getTransaction();
			tx.begin();
			Package ob=(Package)session.get(Package.class, pid);
			session.delete(ob);
			tx.commit();
			session.close();
			System.out.println("Delete Method Called");
	}
		
		public Package UpdatePackage(Integer pid) {
			Session session =sessionFactory.openSession();
			Transaction tx=session.getTransaction();
			tx.begin();
			Package ob=(Package)session.get(Package.class, pid);
			tx.commit();
			session.close();
			return ob;
		}
		public void NowUpdatePackage(int pid,String pname,String pdesc) {
			Session session =sessionFactory.openSession();
			Transaction tx=session.getTransaction();
			tx.begin();
			Package ob=(Package)session.get(Package.class, pid);
			ob.setPackageName(pname);
			ob.setPackageDescription(pdesc);
			session.update(ob);
			tx.commit();
			session.close();
			System.out.println("Update Method Called");
		
		}
		public Package DisplayImage(int ccid)
		{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Package ok=(Package)session.get(Package.class,ccid);
		session.close();
		return ok;
			
			
		}
		
		
			
}
