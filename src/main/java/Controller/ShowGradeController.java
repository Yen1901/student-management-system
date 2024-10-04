package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.GradeFunctionImpl;
import objects.GradeObject;
import util.ConnectionPoolImpl;

/**
 * Servlet implementation class ShowGradeController
 */
@WebServlet("/showgrade")
public class ShowGradeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private GradeFunctionImpl gradeFunction;
	
	public ShowGradeController() {
	    super();
	    this.gradeFunction = new GradeFunctionImpl(new ConnectionPoolImpl());
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
	        // Lấy danh sách mã lớp
	        List<Integer> classIds = gradeFunction.getClassIds();
	        request.setAttribute("classIds", classIds);

	        // Lấy mã lớp từ yêu cầu
	        String classIdParam = request.getParameter("classId");
	        int classId = classIdParam != null ? Integer.parseInt(classIdParam) : -1;

	        // Lấy danh sách điểm từ session hoặc cơ sở dữ liệu
	        List<GradeObject> list;
	        if (classId != -1) {
	            list = gradeFunction.getGradeObjectsByClassId(classId, 0, (byte) 100);
	        } else {
	            list = gradeFunction.getGradeObjects(null, 0, (byte) 100);
	        }

	        // Đặt danh sách điểm vào request và chuyển hướng đến trang hiển thị
	        request.setAttribute("listG", list);
	        request.getRequestDispatcher("/admin/grade.jsp").forward(request, response);

	    } catch (Exception e) {
	        e.printStackTrace();
	        request.setAttribute("error", "An error occurred while retrieving the grade list.");
	        request.getRequestDispatcher("/error.jsp").forward(request, response);
	    }
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    doGet(request, response);
	}
	
	
}
