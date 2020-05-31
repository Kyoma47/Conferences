package DAO;

public interface DAO <T> {
	
	//public void Create(T obj);
	public void Update(T obj);
	public void Delete(int id) ;

}
