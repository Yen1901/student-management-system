package test;

import java.sql.Date;
import java.util.*;

import DAO.StudentFunction;
import DAO.StudentFunctionImpl;
import objects.StudentObject;
import util.ConnectionPool;
import util.ConnectionPoolImpl;

public class StudentTest {
	public static void main(String[] args) {
		 StudentFunction sf = new StudentFunctionImpl(null);
		 
		 StudentObject st = new StudentObject();
		 
		 //add
//		 st.setStudentCode("SV029");
//		 st.setStudentName("Hoàng Nam Anh");
//		 st.setStudentHomeTown("Quản Nam");
//		 st.setStudentDob(Date.valueOf("2002-09-14"));
//		 st.setStudentCCCD("222222222");
//		 st.setStudentNational("Việt Nam");
//		 st.setStudentReligion("Không");
//		 st.setStudentPhone("0999977777");
//		 
//		 boolean isAdded = sf.add(st);
//		 if(!isAdded) {
//			 System.out.println("Không thành công!");
//		 }
//		 else {
//			System.out.println("Thêm thành công!");
//			ArrayList<StudentObject> list = sf.getStudentObjects(null, 0, (byte) 20);
//			list.forEach(u ->{
//				System.out.println(u);
//			});
//		}
		 
		//edit
//		 st.setStudentID(2); 
//		 st.setStudentCode("SV032"); 
//         st.setStudentName("Nguyễn Thị Lan Anh"); 
//		 st.setStudentHomeTown("Hà Nam"); 
//         st.setStudentDob(Date.valueOf("2002-09-14")); 
//		 st.setStudentCCCD("222222222"); 
//		 st.setStudentNational("Việt Nam");
//		 st.setStudentReligion("Không"); 
//		 st.setStudentPhone("0999977777"); 
//		 boolean isEdited = sf.edit(st);
//		 if (isEdited) {
//            System.out.println("Sửa thành công!");
//		 } else {
//		    System.out.println("Sửa không thành công!");
//		 }
//		
		 //delete
//		 st.setStudentID(2); 
//		 boolean isDeleted = sf.del(st);
//		 if (isDeleted) {
//		    System.out.println("Xóa thành công!");
//		 } else {
//			System.out.println("Xóa không thành công!");
//		 }		    
		 
		 
		 // find base id
//		 int studentId = 3; 
//		 StudentObject studentById = sf.getStudentObject(studentId);
//		 if (studentById != null) {
//			 System.out.println("Thông tin sinh viên có ID:");
//		     System.out.println(studentById);
//		 } else {
//		     System.out.println("Không tìm thấy sinh viên có ID " + studentId);
//		 }
		 
		 //find base code and name
		 String studentCode = "SV026"; // Mã sinh viên cần tìm
		 String studentName = "Nguyễn Thị Lan Anh"; // Tên sinh viên cần tìm
		 StudentObject studentByCodeName = sf.getStudentObject(studentCode, studentName);
		 if (studentByCodeName != null) {
		    System.out.println("\nThông tin sinh viên theo Mã và Tên:");
		    System.out.println(studentByCodeName);
		 } else {
			System.out.println("\nKhông tìm thấy sinh viên có Mã " + studentCode + " và Tên " + studentName);
		 }
		    
   }
}
