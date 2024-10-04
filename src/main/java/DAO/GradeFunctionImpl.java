package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import objects.GradeObject;
import util.ConnectionPool;
import util.ConnectionPoolImpl;

public class GradeFunctionImpl {
	private Connection con;
	private ConnectionPool cp;
	
	public GradeFunctionImpl(ConnectionPool cp) {
		if(cp == null) {
			this.cp = new ConnectionPoolImpl();
		} else {
			this.cp = cp;
		}
		try {
			this.con = this.cp.getConnection("Grade");
			if(this.con.getAutoCommit()) {
				this.con.setAutoCommit(false);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<GradeObject> getGradeObjects(GradeObject similar, int at, byte total){
		ArrayList<GradeObject> results = new ArrayList<>();
		GradeObject item;
		
		String sql = "select * from tblgrade order by grade_ID desc limit ?, ?;";
		try {
			PreparedStatement pre = this.con.prepareStatement(sql);
			pre.setInt(1, at);
			pre.setInt(2, total);
			
			try (ResultSet rs = pre.executeQuery()) {
				while (rs.next()) {
					item = new GradeObject();
					item.setGrade_ID(rs.getInt("grade_ID"));
					item.setClass_ID(rs.getInt("class_ID"));
					item.setStudent_ID(rs.getInt("student_ID"));
					item.setCourse_ID(rs.getInt("course_ID"));
					item.setTx1(rs.getFloat("tx1"));
					item.setTx2(rs.getFloat("tx2"));
					item.setExam_Score(rs.getFloat("exam_Score"));
					item.setLetter_Score(rs.getString("letter_Score"));
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
	
	public ArrayList<GradeObject> getGradeObjectsByClassId(int classId, int at, byte total) {
	    ArrayList<GradeObject> results = new ArrayList<>();
	    GradeObject item = null;

	    String sql = "SELECT * FROM tblgrade WHERE class_ID = ? ORDER BY grade_ID DESC LIMIT ?, ?";
	    try (PreparedStatement pre = this.con.prepareStatement(sql)) {
	        pre.setInt(1, classId);
	        pre.setInt(2, at);
	        pre.setInt(3, total);

	        try (ResultSet rs = pre.executeQuery()) {
	            while (rs.next()) {
	                item = new GradeObject();
	                item.setGrade_ID(rs.getInt("grade_ID"));
	                item.setClass_ID(rs.getInt("class_ID"));
	                item.setStudent_ID(rs.getInt("student_ID"));
	                item.setCourse_ID(rs.getInt("course_ID"));
	                item.setTx1(rs.getFloat("tx1"));
	                item.setTx2(rs.getFloat("tx2"));
	                item.setExam_Score(rs.getFloat("exam_Score"));
	                item.setLetter_Score(rs.getString("letter_Score"));
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
	
	public ArrayList<Integer> getClassIds() {
	    ArrayList<Integer> classIds = new ArrayList<>();

	    String sql = "SELECT DISTINCT class_ID FROM tblgrade";
	    try (PreparedStatement pre = this.con.prepareStatement(sql);
	         ResultSet rs = pre.executeQuery()) {
	        while (rs.next()) {
	            classIds.add(rs.getInt("class_ID"));
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return classIds;
	}
	
	public int countStudentsByGrade(String grade, int classId) {
	    int count = 0;

	    String sql = "SELECT COUNT(*) AS count FROM tblgrade WHERE class_ID = ? AND letter_Score = ?";
	    try (PreparedStatement pre = this.con.prepareStatement(sql)) {
	        pre.setInt(1, classId);
	        pre.setString(2, grade);

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

	
	public ConnectionPool getCP() {
        return this.cp;
    }

    public void releaseConnection() {
        try {
            this.cp.releaseConnection(this.con, "Grade");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
	
}
