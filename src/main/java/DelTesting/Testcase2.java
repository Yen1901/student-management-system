package DelTesting;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import DAO.StudentFunctionImpl;
import objects.StudentObject;
import util.ConnectionPool;
import util.ConnectionPoolImpl;

public class Testcase2 {
	private StudentFunctionImpl studentFunction;
    private Connection connection;
    private ConnectionPool connectionPool;
    private int nonExistentStudentID = 250; // ID sinh viên không tồn tại

    @BeforeEach
    public void setUp() throws SQLException {
        // Thiết lập kết nối cơ sở dữ liệu
        connectionPool = new ConnectionPoolImpl();
        connection = connectionPool.getConnection("Student");

        // Khởi tạo lớp cần kiểm thử
        studentFunction = new StudentFunctionImpl(connectionPool);
    }

    @Test
    public void testDeleteStudentByIDFailure() {
        System.out.println("Test case FC_002: Xóa sinh viên thất bại");

        // Cố gắng lấy đối tượng StudentObject với ID không tồn tại
        StudentObject student = studentFunction.getStudentObject(nonExistentStudentID);

        // Kiểm tra đối tượng là null như mong đợi
        assertNull(student, "Sinh viên với ID không tồn tại, vì vậy đối tượng StudentObject phải là null.");

        System.out.println("Kiểm thử xóa sinh viên thất bại đã hoàn tất.");
    }

    @AfterEach
    public void tearDown() throws SQLException {
        // Giải phóng kết nối
        studentFunction.releaseConnection();
        connection.close();
    }
}