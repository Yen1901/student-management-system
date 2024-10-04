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
 * Servlet implementation class EditStudentController
 */
@WebServlet("/editstudent")
public class EditStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public EditStudentController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sid = request.getParameter("id");
        if (sid == null || sid.isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/showstudent");
            return;
        }

        int id = 0;
        try {
            id = Integer.parseInt(sid);
        } catch (NumberFormatException e) {
            response.sendRedirect(request.getContextPath() + "/showstudent");
            return;
        }

        StudentFunctionImpl studentFunction = new StudentFunctionImpl(new ConnectionPoolImpl());
        StudentObject student = studentFunction.getStudentObject(id);
        studentFunction.releaseConnection();

        if (student != null) {
            request.setAttribute("st", student);
            request.getRequestDispatcher("/admin/edit-student.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/showstudent");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String idStr = request.getParameter("studentID");
        if (idStr == null || idStr.isEmpty()) {
            request.setAttribute("error", "Student ID is missing.");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
            return;
        }

        int id = 0;
        try {
            id = Integer.parseInt(idStr);
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Invalid student ID format.");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
            return;
        }

        String code = request.getParameter("studentCode");
        String name = request.getParameter("studentName");
        String hometown = request.getParameter("studentHomeTown");
        String dobStr = request.getParameter("studentDob");
        String cccd = request.getParameter("studentCCCD");
        String national = request.getParameter("studentNational");
        String religion = request.getParameter("studentReligion");
        String phone = request.getParameter("studentPhone");

        Date dob = null;
        try {
            dob = Date.valueOf(dobStr);
        } catch (IllegalArgumentException e) {
            request.setAttribute("error", "Invalid date format for studentDob.");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
            return;
        }

        StudentObject student = new StudentObject(code, name, hometown, dob, cccd, national, religion, phone);
        student.setStudentID(id);

        StudentFunctionImpl studentFunction = new StudentFunctionImpl(new ConnectionPoolImpl());
        boolean result = studentFunction.edit(student);
        if (result) {
            // Update the student list in the session with the latest data
            List<StudentObject> updatedList = studentFunction.getStudentObjects(null, 0, (byte) 100);
            request.getSession().setAttribute("listS", updatedList);
        }
        studentFunction.releaseConnection();

        if (result) {
            response.sendRedirect(request.getContextPath() + "/showstudent");
        } else {
            request.setAttribute("error", "Failed to update the student.");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
}
