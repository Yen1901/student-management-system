package Controller;

import java.io.IOException;
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
 * Servlet implementation class ShowStudentController
 */
@WebServlet("/showstudent")
public class ShowStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private DAO.StudentFunctionImpl studentFunction;

    public ShowStudentController() {
        super();
        this.studentFunction = new StudentFunctionImpl(new ConnectionPoolImpl());
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Lấy danh sách sinh viên từ session hoặc cơ sở dữ liệu
            List<StudentObject> list = (List<StudentObject>) request.getSession().getAttribute("listS");
            if (list == null) {
                // Nếu không có trong session, lấy từ cơ sở dữ liệu và lưu vào session
                list = studentFunction.getStudentObjects(null, 0, (byte) 100);
                request.getSession().setAttribute("listS", list);
            }

            // Đặt danh sách sinh viên vào request và chuyển hướng đến trang hiển thị
            request.setAttribute("listS", list);
            request.getRequestDispatcher("/admin/student.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "An error occurred while retrieving the student list.");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
