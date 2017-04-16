package tablecategory.mytable;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Repository
@EnableTransactionManagement
public class productcategorydaoimpl implements productcategorydao{

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public void insert(productcategory t) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(t);
	}

	@Transactional
	public void update(productcategory t) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(t);
	}

	@Transactional
	public void delete(int tid) {
		// TODO Auto-generated method stub
		//sessionfactory.getcurrentsession().delete;
		sessionFactory.getCurrentSession().createQuery("delete from productcategory t where t.id = :tid").setInteger("tid", tid).executeUpdate();
	}


	@Transactional
	public List<productcategory> getAllcategories() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from productcategory").list();
	}

	
	@Transactional
		public productcategory getcategory(int cid) {
		// TODO Auto-generated method stub
		return (productcategory)sessionFactory.getCurrentSession().createQuery("from productcategory t where t.id = :tid").setInteger("tid", cid).list().get(0);
	}

		
	}