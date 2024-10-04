package objects;

import java.sql.Date;

public class StudentObject {
    private int studentID;
    private String studentCode;
    private String studentName;
    private String studentHomeTown;
    private Date studentDob;
    private String studentCCCD;
    private String studentNational;
    private String studentReligion;
    private String studentPhone;
    private int account_ID;
    private int department_ID;
    
    public StudentObject() {
        
    }

    public StudentObject(String studentCode, String studentName, String studentHomeTown,
            Date studentDob, String studentCCCD, String studentNational, String studentReligion, String studentPhone) {
        this.studentCode = studentCode;
        this.studentName = studentName;
        this.studentHomeTown = studentHomeTown;
        this.studentDob = studentDob;
        this.studentCCCD = studentCCCD;
        this.studentNational = studentNational;
        this.studentReligion = studentReligion;
        this.studentPhone = studentPhone;
    }

	public int getStudentID() {
		return studentID;
	}

	public void setStudentID(int studentID) {
		this.studentID = studentID;
	}

	public String getStudentCode() {
		return studentCode;
	}

	public void setStudentCode(String studentCode) {
		this.studentCode = studentCode;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getStudentHomeTown() {
		return studentHomeTown;
	}

	public void setStudentHomeTown(String studentHomeTown) {
		this.studentHomeTown = studentHomeTown;
	}

	public Date getStudentDob() {
		return studentDob;
	}

	public void setStudentDob(Date studentDob) {
		this.studentDob = studentDob;
	}

	public String getStudentCCCD() {
		return studentCCCD;
	}

	public void setStudentCCCD(String studentCCCD) {
		this.studentCCCD = studentCCCD;
	}

	public String getStudentNational() {
		return studentNational;
	}

	public void setStudentNational(String studentNational) {
		this.studentNational = studentNational;
	}

	public String getStudentReligion() {
		return studentReligion;
	}

	public void setStudentReligion(String studentReligion) {
		this.studentReligion = studentReligion;
	}

	public String getStudentPhone() {
		return studentPhone;
	}

	public void setStudentPhone(String studentPhone) {
		this.studentPhone = studentPhone;
	}

	public int getAccount_ID() {
		return account_ID;
	}

	public void setAccount_ID(int account_ID) {
		this.account_ID = account_ID;
	}

	public int getDepartment_ID() {
		return department_ID;
	}

	public void setDepartment_ID(int department_ID) {
		this.department_ID = department_ID;
	}

	@Override
	public String toString() {
		return "StudentObject [studentID=" + studentID + ", studentCode=" + studentCode + ", studentName=" + studentName
				+ ", studentHomeTown=" + studentHomeTown + ", studentDob=" + studentDob + ", studentCCCD=" + studentCCCD
				+ ", studentNational=" + studentNational + ", studentReligion=" + studentReligion + ", studentPhone="
				+ studentPhone + ", account_ID=" + account_ID + ", department_ID=" + department_ID + "]";
	}

     
}
