package tablecategory.mytable;
import java.util.List;
public interface personaldetailsdao {

	public void insert(personaldetails c);
	public void update(personaldetails c);
	public void delete(int cid);
	public List<personaldetails> getAllcategories();
	public List<personaldetails> getpaAllcategories(String miid, String miad, String gender, String religion);
	public personaldetails getcategory(int cid);
}
