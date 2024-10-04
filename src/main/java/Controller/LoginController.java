package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.AccountFunctionImpl;
import DAO.AdminFunctionImpl;
import DAO.StudentFunctionImpl;
import objects.AccountObject;
import objects.AdminObject;
import objects.StudentObject;
import util.ConnectionPoolImpl;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private AccountFunctionImpl accountFunction;
    private AdminFunctionImpl adminFunction;
    private StudentFunctionImpl studentFuction;

    public LoginController() {
        super();
        this.accountFunction = new AccountFunctionImpl(new ConnectionPoolImpl());
        this.adminFunction = new AdminFunctionImpl(new ConnectionPoolImpl());
        this.studentFuction = new StudentFunctionImpl(new ConnectionPoolImpl());
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/login/index.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        AccountObject account = accountFunction.login(username, password);
        if (account != null) {
            HttpSession session = request.getSession();
            session.setAttribute("account", account);
            session.setAttribute("username", account.getUsername());
            session.setAttribute("email", account.getEmail());
            session.setAttribute("roleId", account.getRole_ID());
            session.setAttribute("loggedIn", true);

            String redirectURL = "";
            switch (account.getRole_ID()) {
                case 1: // Admin
                    session.setAttribute("roleName", "Admin");
                    AdminObject admin = adminFunction.getAdminDetails(account.getAccount_ID());
                    if (admin != null) {
                        session.setAttribute("adminName", admin.getAdmin_Name());
                    }
                    redirectURL = "/admin/index.jsp";
                    break;
                case 2: // Teacher
                    session.setAttribute("roleName", "Teacher");
                    redirectURL = "/teacher/index.jsp";
                    break;
                case 3: // Student
                	session.setAttribute("roleName", "Student");
                    // Lấy thông tin account_id của sinh viên
                    int accountID = account.getAccount_ID();
                    
                    // Sử dụng accountID để lấy thông tin sinh viên
                    StudentObject student = studentFuction.getStudentDetailsByAccountId(accountID);
                    
                    if (student != null) {
                        session.setAttribute("studentID", student.getStudentID()); // Lưu studentID (nếu cần thiết)
                        session.setAttribute("studentCode", student.getStudentCode());
                        session.setAttribute("studentName", student.getStudentName());
                        session.setAttribute("studentHomeTown", student.getStudentHomeTown());
                        session.setAttribute("studentDob", student.getStudentDob());
                        session.setAttribute("studentCCCD", student.getStudentCCCD());
                        session.setAttribute("studentNational", student.getStudentNational());
                        session.setAttribute("studentReligion", student.getStudentReligion());
                        session.setAttribute("studentPhone", student.getStudentPhone());
                    }
                    
                    redirectURL = "/student/index.jsp";
                    break;
                default:
                    response.sendRedirect(request.getContextPath() + "/login.jsp?error=role");
                    return;
            }

            response.sendRedirect(request.getContextPath() + redirectURL);
        } else {
            request.setAttribute("error", "Đăng nhập không thành công!");
            request.getRequestDispatcher("/login/index.jsp").forward(request, response);
        }
    }        
}
