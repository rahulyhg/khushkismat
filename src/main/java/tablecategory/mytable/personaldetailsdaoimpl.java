package tablecategory.mytable;

import java.math.BigInteger;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Repository
@EnableTransactionManagement
public class personaldetailsdaoimpl implements personaldetailsdao{

	@Autowired
	SessionFactory sessionFactory;
	private String miad;
	
	@Transactional
	public void insert(personaldetails t) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(t);
	}

	@Transactional
	public void update(personaldetails t) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(t);
	}

	@Transactional
	public void delete(int tid) {
		// TODO Auto-generated method stub
		//sessionfactory.getcurrentsession().delete;
		sessionFactory.getCurrentSession().createQuery("delete from personaldetails t where t.id = :tid").setInteger("tid", tid).executeUpdate();
	}


	@Transactional
	public List<personaldetails> getAllcategories() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from personaldetails").list();
	}
	

	@Transactional
		public personaldetails getcategory(int cid) {
		// TODO Auto-generated method stub
		return (personaldetails)sessionFactory.getCurrentSession().createQuery("from personaldetails t where t.id = :tid").setInteger("tid", cid).list().get(0);
	}
	
	@Transactional
	public List<personaldetails> getpaAllcategories(String miid, String miad, String gender, String religion) {
		// TODO Auto-generated method stub
			return sessionFactory.getCurrentSession().createQuery("from personaldetails t where t.age > :tiid and t.age< :tiad and t.gender= :tgender and t.religion= :treligion").setString("tiid", miid).setString("tiad", miad).setString("tgender", gender).setString("treligion", religion).list();
	}
	}