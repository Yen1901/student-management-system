package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import objects.StudentObject;
import util.ConnectionPool;
import util.ConnectionPoolImpl;

public class StudentFunctionImpl implements StudentFunction {
	
	private Connection con;
	private ConnectionPool cp;
	
	public StudentFunctionImpl(ConnectionPool cp) {
		if(cp == null) {
			this.cp = new ConnectionPoolImpl();
		}
		else {
			this.cp = cp;
		}
		try {
			this.con = this.cp.getConnection("Student");
			//ktra và chấm dứt chế độ thực thi tự động của kết nối
			if(this.con.getAutoCommit()) {
				//hủy chế độ thực thi
				this.con.setAutoCommit(false);
			}
		} catch (Exception e) {
			
		}
	}
	
	private boolean exe(PreparedStatement pre) {
		//Pre đã được biên dịch và truyền đầy đủ giá trị cho các tham số
		if(pre != null) {
			try {
				int results = pre.executeUpdate();
				
				if(results == 0) {
					this.con.rollback();
					return false;
				}
				
				//Xác nhận thực thi sau cùng
				this.con.commit();
				return true;
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
				try {
					//Trở lại trạng thái an toàn
					this.con.rollback();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}finally {
				pre = null;
			}
			
		}
		return false;
	}
	
	@Override
	public boolean add(StudentObject item) {
		StringBuilder sql = new StringBuilder();
	    sql.append("INSERT INTO tblstudent( ");
	    sql.append("student_Code, student_Name, student_Home_Town, student_Dob, ");
	    sql.append("student_CCCD, student_National, student_Religition, student_Phone) ");
	    sql.append("VALUES(?, ?, ?, ?, ?, ?, ?, ?)");

	    try (
	    	PreparedStatement pre = this.con.prepareStatement(sql.toString())) {
	        pre.setString(1, item.getStudentCode());
	        pre.setString(2, item.getStudentName());
	        pre.setString(3, item.getStudentHomeTown());
	        pre.setDate(4, item.getStudentDob());
	        pre.setString(5, item.getStudentCCCD());
	        pre.setString(6, item.getStudentNational());
	        pre.setString(7, item.getStudentReligion());
	        pre.setString(8, item.getStudentPhone());

	        return this.exe(pre);
	    } catch (SQLException e) {
	        e.printStackTrace();
	        try {
	            this.con.rollback();
	        } catch (SQLException e2) {
	            e2.printStackTrace();
	        }
	    }

	    return false;
	}

	@Override
	public boolean edit(StudentObject item) {
	    StringBuilder sql = new StringBuilder();
	    sql.append("UPDATE tblstudent SET ");
	    sql.append("student_Code = ?, student_Name = ?, student_Home_Town = ?, student_Dob = ?, ");
	    sql.append("student_CCCD = ?, student_National = ?, student_Religition = ?, student_Phone = ? ");
	    sql.append("WHERE student_ID = ?");

	    try (PreparedStatement pre = this.con.prepareStatement(sql.toString())) {
	        pre.setString(1, item.getStudentCode());
	        pre.setString(2, item.getStudentName());
	        pre.setString(3, item.getStudentHomeTown());
	        pre.setDate(4, item.getStudentDob());
	        pre.setString(5, item.getStudentCCCD());
	        pre.setString(6, item.getStudentNational());
	        pre.setString(7, item.getStudentReligion());
	        pre.setString(8, item.getStudentPhone());
	        pre.setInt(9, item.getStudentID());

	        return this.exe(pre);
	    } catch (SQLException e) {
	        e.printStackTrace();
	        try {
	            this.con.rollback();
	        } catch (SQLException e2) {
	            e2.printStackTrace();
	        }
	    }

	    return false;
	}



	@Override
	public boolean del(StudentObject item) {
		String sql = "DELETE FROM tblstudent WHERE student_ID = ?;";

	    try (PreparedStatement pre = this.con.prepareStatement(sql.toString())) {
	        pre.setInt(1, item.getStudentID());
	        return this.exe(pre);
	       
	    } catch (SQLException e) {
	        e.printStackTrace();
	        try {
	            this.con.rollback();
	        } catch (SQLException e2) {
	            e2.printStackTrace();
	        }
	    }

	    return false;
	}

	@Override
	public StudentObject getStudentObject(int id) {
		String sql = "SELECT * FROM tblstudent WHERE student_ID = ?;";

	    try (
	    	PreparedStatement pre = this.con.prepareStatement(sql)) {
	        pre.setInt(1, id);
	        try (
	        	ResultSet rs = pre.executeQuery()) {
	            if (rs != null && rs.next()) {
	                StudentObject item = new StudentObject();
	                item.setStudentID(rs.getInt("student_ID"));
	                item.setStudentCode(rs.getString("student_Code"));
	                item.setStudentName(rs.getString("student_Name"));
	                item.setStudentHomeTown(rs.getString("student_Home_Town"));
	                item.setStudentDob(rs.getDate("student_Dob"));
	                item.setStudentCCCD(rs.getString("student_CCCD"));
	                item.setStudentNational(rs.getString("student_National"));
	                item.setStudentReligion(rs.getString("student_Religition"));
	                item.setStudentPhone(rs.getString("student_Phone"));
	                return item;
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        try {
	            this.con.rollback();
	        } catch (SQLException e2) {
	            e2.printStackTrace();
	        }
	    }

	    return null;
	}

	@Override
	public StudentObject getStudentObject(String code, String name) {
		String sql = "SELECT * FROM tblstudent WHERE (student_Code = ?) AND (student_Name = ?);";

	    try (
	    	PreparedStatement pre = this.con.prepareStatement(sql)) {
	        pre.setString(1, code);
	        pre.setString(2, name);
	        ResultSet rs = pre.executeQuery();
	        StudentObject item = null;
	        if (rs != null) {
               if(rs.next()) {
            	   item = new StudentObject();
            	   item.setStudentID(rs.getInt("student_ID"));
                   item.setStudentCode(rs.getString("student_Code"));
                   item.setStudentName(rs.getString("student_Name"));
                   item.setStudentHomeTown(rs.getString("student_Home_Town"));
                   item.setStudentDob(rs.getDate("student_Dob"));
                   item.setStudentCCCD(rs.getString("student_CCCD"));
                   item.setStudentNational(rs.getString("student_National"));
                   item.setStudentReligion(rs.getString("student_Religition"));
                   item.setStudentPhone(rs.getString("student_Phone"));
               }
              
               
           }
	        return item;
	    } catch (SQLException e) {
	        e.printStackTrace();
	        try {
	            this.con.rollback();
	        } catch (SQLException e2) {
	            e2.printStackTrace();
	        }
	    }

	    return null;
	}

	@Override
	public ArrayList<StudentObject> getStudentObjects(StudentObject similar, int at, byte total) {
	    ArrayList<StudentObject> results = new ArrayList<>();
	    StudentObject item = null;

	    String sql = "SELECT * FROM tblstudent ";
	    sql += "ORDER BY student_ID DESC ";
	    sql += "LIMIT ?, ?";

	    try (PreparedStatement pre = this.con.prepareStatement(sql)) {
	        pre.setInt(1, at);
	        pre.setInt(2, total);

	        try (ResultSet rs = pre.executeQuery()) {
	            while (rs.next()) {
	                item = new StudentObject();
	                item.setStudentID(rs.getInt("student_ID"));
	                item.setStudentCode(rs.getString("student_Code"));
	                item.setStudentName(rs.getString("student_Name"));
	                item.setStudentHomeTown(rs.getString("student_Home_Town"));
	                item.setStudentDob(rs.getDate("student_Dob"));
	                item.setStudentCCCD(rs.getString("student_CCCD"));
	                item.setStudentNational(rs.getString("student_National"));
	                item.setStudentReligion(rs.getString("student_Religition"));
	                item.setStudentPhone(rs.getString("student_Phone"));
	                results.add(item);
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        try {
	            this.con.rollback();
	        } catch (SQLException e2) {
	            e2.printStackTrace();
	        }
	    }
	    return results;
	}
	
	public StudentObject getStudentDetailsByAccountId(int accountID) {
	    StudentObject student = null;

	    String sql = "SELECT tblstudent.*, tblaccount.* FROM tblstudent "
	               + "JOIN tblaccount ON tblaccount.account_ID = tblstudent.account_ID "
	               + "WHERE tblaccount.account_ID = ?;";

	    try (PreparedStatement pre = this.con.prepareStatement(sql)) {
	        pre.setInt(1, accountID);
	        
	        try (ResultSet rs = pre.executeQuery()) {
	            if (rs.next()) {
	                student = new StudentObject();
	                student.setStudentID(rs.getInt("student_ID"));
	                student.setStudentCode(rs.getString("student_Code"));
	                student.setStudentName(rs.getString("student_Name"));
	                student.setStudentHomeTown(rs.getString("student_Home_Town"));
	                student.setStudentDob(rs.getDate("student_Dob"));
	                student.setStudentCCCD(rs.getString("student_CCCD"));
	                student.setStudentNational(rs.getString("student_National"));
	                student.setStudentReligion(rs.getString("student_Religition"));
	                student.setStudentPhone(rs.getString("student_Phone"));
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        try {
	            this.con.rollback();
	        } catch (SQLException e2) {
	            e2.printStackTrace();
	        }
	    }
	    
	    return student;
	}

	
	@Override
	public List<String> getAllHometowns() {
	    List<String> hometowns = new ArrayList<>();
	    String sql = "SELECT DISTINCT student_Home_Town FROM tblstudent;";

	    try (PreparedStatement pre = this.con.prepareStatement(sql)) {
	        try (ResultSet rs = pre.executeQuery()) {
	            while (rs.next()) {
	                String hometown = rs.getString("student_Home_Town");
	                hometowns.add(hometown);
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        try {
	            this.con.rollback();
	        } catch (SQLException e2) {
	            e2.printStackTrace();
	        }
	    }
	    return hometowns;
	}
	
	public int countStudentsByHometown(String hometown) {
	    int count = 0;
	    String sql = "SELECT COUNT(*) AS count FROM tblstudent WHERE student_Home_Town = ?;";

	    try (PreparedStatement pre = this.con.prepareStatement(sql)) {
	        pre.setString(1, hometown);
	        
	        try (ResultSet rs = pre.executeQuery()) {
	            if (rs.next()) {
	                count = rs.getInt("count");
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        try {
	            this.con.rollback();
	        } catch (SQLException e2) {
	            e2.printStackTrace();
	        }
	    }
	    return count;
	}
	@Override
	public StudentObject getStudentByCode(String studentCode) {
	    String sql = "SELECT * FROM tblstudent WHERE student_Code = ?;";

	    try (PreparedStatement pre = this.con.prepareStatement(sql)) {
	        pre.setString(1, studentCode);
	        
	        try (ResultSet rs = pre.executeQuery()) {
	            if (rs != null && rs.next()) {
	                StudentObject student = new StudentObject();
	                student.setStudentID(rs.getInt("student_ID"));
	                student.setStudentCode(rs.getString("student_Code"));
	                student.setStudentName(rs.getString("student_Name"));
	                student.setStudentHomeTown(rs.getString("student_Home_Town"));
	                student.setStudentDob(rs.getDate("student_Dob"));
	                student.setStudentCCCD(rs.getString("student_CCCD"));
	                student.setStudentNational(rs.getString("student_National"));
	                student.setStudentReligion(rs.getString("student_Religition"));
	                student.setStudentPhone(rs.getString("student_Phone"));
	                return student;
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        try {
	            this.con.rollback();
	        } catch (SQLException e2) {
	            e2.printStackTrace();
	        }
	    }
	    return null;
	}

	@Override
	public ConnectionPool getCP() {
		// TODO Auto-generated method stub
		return this.cp;
	}

	@Override
	public void releaseConnection() {
		// TODO Auto-generated method stub
		try {
			this.cp.releaseConnection(this.con, "Student");
		} catch (SQLException e) {
		// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
