package DAO;

import java.util.ArrayList;
import java.util.List;

import objects.StudentObject;
import util.ConnectionPool;

public interface StudentFunction {
	public boolean add(StudentObject item);
	public boolean edit(StudentObject item);
	public boolean del(StudentObject item);
	
	public StudentObject getStudentObject (int id);
	public StudentObject getStudentObject (String code, String name);
	public ArrayList<StudentObject> getStudentObjects(StudentObject similar, int at, byte total);
	public List<String> getAllHometowns();
	public int countStudentsByHometown(String hometown);
	
	public ConnectionPool getCP();
	public void releaseConnection();
	StudentObject getStudentByCode(String studentCode);
	
}
