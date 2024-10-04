package DelTesting;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import DAO.StudentFunctionImpl;
import objects.StudentObject;
import util.ConnectionPool;
import util.ConnectionPoolImpl;

public class Testcase1 {
	private StudentFunctionImpl studentFunction;
    private Connection connection;
    private ConnectionPool connectionPool;
    private int testStudentId; // ID test

    @BeforeEach
    public void setUp() throws SQLException {
        // Thiết lập kết nối cơ sở dữ liệu 
        connectionPool = new ConnectionPoolImpl();
        connection = connectionPool.getConnection("Student");

        // Khởi tạo lớp cần kiểm thử
        studentFunction = new StudentFunctionImpl(connectionPool);

        // Tìm ID test để kiểm thử
        String selectSql = "SELECT student_ID FROM tblstudent WHERE student_Code = 'SV007' AND student_Name = 'Lý Văn Thanh Phương'";
        try (Statement statement = connection.createStatement();
             ResultSet rs = statement.executeQuery(selectSql)) {
            if (rs.next()) {
                testStudentId = rs.getInt("student_ID");
            } else {
                throw new SQLException("Không tìm thấy id cần kiểm thử");
            }
        }
    }

    @Test
    public void testDeleteStudentSuccess() {
        System.out.println("Test case 1: Xóa sinh viên thành công.");

        // Tạo đối tượng StudentObject cần kiểm thử
        StudentObject student = studentFunction.getStudentObject(testStudentId);

        // Kiểm tra đối tượng có tồn tại không
        assertNotNull(student, "Sinh viên phải tồn tại trước khi xóa.");

        // Thực hiện xóa
        boolean result = studentFunction.del(student);

        // Kiểm tra xóa thành công
        assertTrue(result, "Xóa sinh viên phải thành công.");

        // Kiểm tra đối tượng đã bị xóa
        StudentObject deletedStudent = studentFunction.getStudentObject(testStudentId);
        assertNull(deletedStudent, "Sinh viên phải là null sau khi xóa.");

        System.out.println("Kiểm thử xóa sinh viên thành công đã hoàn tất.");
    }


    @AfterEach
    public void tearDown() throws SQLException {
        // Giải phóng kết nối
        studentFunction.releaseConnection();
        connection.close();
    }
}
