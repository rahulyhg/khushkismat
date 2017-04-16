package tablecategory.mytable;

import java.util.List;

public interface productcategorydao {
	public void insert(productcategory c);
	public void update(productcategory c);
	public void delete(int cid);
	public List<productcategory> getAllcategories();
	public productcategory getcategory(int cid);
}
