package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.StudentFunctionImpl;
import objects.StudentObject;
import util.ConnectionPoolImpl;

/**
 * Servlet implementation class DelStudentController
 */
@WebServlet("/admin/delstudent")
public class DelStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    private StudentFunctionImpl studentFunction;

    public DelStudentController() {
        super();
        this.studentFunction = new StudentFunctionImpl(new ConnectionPoolImpl());
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sid = request.getParameter("sid");
        
        if (sid != null && !sid.isEmpty()) {
            try {
                int id = Integer.parseInt(sid);
                
                StudentObject student = new StudentObject();
                student.setStudentID(id);
                
                boolean success = studentFunction.del(student);
                
                if (success) {
                    // Lấy danh sách sinh viên mới từ cơ sở dữ liệu
                    List<StudentObject> list = studentFunction.getStudentObjects(null, 0, (byte) 100);
                    
                    // Lưu danh sách mới vào session
                    HttpSession session = request.getSession();
                    session.setAttribute("listS", list);
                    
                    response.sendRedirect(request.getContextPath() + "/showstudent");
                } else {
                    response.sendRedirect(request.getContextPath() + "/showstudent?error=delete");
                }
            } catch (NumberFormatException e) {
                response.sendRedirect(request.getContextPath() + "/showstudent?error=invalidid");
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/showstudent?error=noid");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
