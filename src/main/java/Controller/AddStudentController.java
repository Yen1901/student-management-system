package Controller;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.StudentFunctionImpl;
import objects.StudentObject;
import util.ConnectionPoolImpl;

/**
 * Servlet implementation class AddStudentController
 */
@WebServlet("/addstudent")
public class AddStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddStudentController() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        // Lấy dữ liệu từ request
        String code = request.getParameter("studentCode");
        String name = request.getParameter("studentName");
        String hometown = request.getParameter("studentHomeTown");
        String dobStr = request.getParameter("studentDob");
        String cccd = request.getParameter("studentCCCD");
        String national = request.getParameter("studentNational");
        String religion = request.getParameter("studentReligion");
        String phone = request.getParameter("studentPhone");

        // Chuyển đổi chuỗi ngày sinh sang đối tượng java.sql.Date
        Date dob = null;
        try {
            dob = Date.valueOf(dobStr);
        } catch (IllegalArgumentException e) {
            // Xử lý nếu ngày sinh không hợp lệ
            request.setAttribute("error", "Invalid date format for studentDob.");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
            return; // Dừng xử lý tiếp theo
        }

        // Tạo đối tượng Sinh viên
        StudentObject student = new StudentObject(code, name, hometown, dob, cccd, national, religion, phone);

        // Thực hiện thêm sinh viên vào cơ sở dữ liệu
        StudentFunctionImpl studentFunction = new StudentFunctionImpl(new ConnectionPoolImpl());
        boolean result = studentFunction.add(student);

        // Giải phóng kết nối cơ sở dữ liệu
        studentFunction.releaseConnection();

        // Kiểm tra kết quả thêm sinh viên
        if (result) {
            // Lấy danh sách sinh viên cập nhật từ cơ sở dữ liệu
            List<StudentObject> updatedList = studentFunction.getStudentObjects(null, 0, (byte) 100);
            request.getSession().setAttribute("listS", updatedList);

            // Chuyển hướng đến trang hiển thị sinh viên sau khi thêm thành công
            response.sendRedirect(request.getContextPath() + "/showstudent");
        } else {
            request.setAttribute("error", "Failed to add the student.");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }

}
