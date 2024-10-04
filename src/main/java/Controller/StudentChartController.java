package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import DAO.StudentFunction;
import DAO.StudentFunctionImpl;

/**
 * Servlet implementation class StudentChartController
 */
@WebServlet("/studentchart")
public class StudentChartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    private StudentFunction studentFunction;

    public void init() throws ServletException {
        // Khởi tạo đối tượng StudentFunction từ StudentFunctionImpl
        this.studentFunction = new StudentFunctionImpl(null); // null or your connection pool if applicable
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Gọi phương thức doPost để xử lý yêu cầu
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy danh sách quê hương từ cơ sở dữ liệu
        List<String> hometowns = studentFunction.getAllHometowns();

        // Tạo một map để lưu số lượng học sinh theo từng quê hương
        Map<String, Integer> studentCounts = new HashMap<>();
        for (String hometown : hometowns) {
            int count = studentFunction.countStudentsByHometown(hometown);
            studentCounts.put(hometown, count);
        }

        // Chuyển đổi map thành danh sách dữ liệu cho biểu đồ
        List<Map<String, Object>> dataPoints = new ArrayList<>();
        for (Map.Entry<String, Integer> entry : studentCounts.entrySet()) {
            Map<String, Object> map = new HashMap<>();
            map.put("label", entry.getKey());
            map.put("y", entry.getValue());
            dataPoints.add(map);
        }

        // Chuyển danh sách thành JSON string để gửi cho client
        Gson gson = new Gson();
        String jsonData = gson.toJson(dataPoints);

        // Đặt dữ liệu vào request để gửi tới JSP
        request.setAttribute("jsonData", jsonData);

        // Chuyển hướng tới trang JSP để hiển thị biểu đồ
        request.getRequestDispatcher("/admin/chart-student.jsp").forward(request, response);
    }

    public void destroy() {
        // Giải phóng tài nguyên khi servlet bị destroy
        if (studentFunction != null) {
            studentFunction.releaseConnection();
        }
    }
}
