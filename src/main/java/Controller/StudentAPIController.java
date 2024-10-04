package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSyntaxException;

import DAO.StudentFunction;
import DAO.StudentFunctionImpl;
import objects.StudentObject;
import util.ConnectionPool;
import util.ConnectionPoolImpl;

@WebServlet(name = "StudentAPIController", urlPatterns = "/api/students/*")
public class StudentAPIController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private StudentFunction studentFunction;

    public void init() throws ServletException {
        ConnectionPool cp = new ConnectionPoolImpl();
        studentFunction = new StudentFunctionImpl(cp);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pathInfo = request.getPathInfo();
        Gson gson = new Gson();

        if (pathInfo == null || pathInfo.equals("/")) {
            // Retrieve all students
            List<StudentObject> students = studentFunction.getStudentObjects(null, 0, Byte.MAX_VALUE);
            String json = gson.toJson(students);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);
        } else {
            // Retrieve student by ID
            String[] parts = pathInfo.split("/");
            if (parts.length == 2) {
                try {
                    int studentId = Integer.parseInt(parts[1]);
                    StudentObject student = studentFunction.getStudentObject(studentId);
                    if (student != null) {
                        String json = gson.toJson(student);
                        response.setContentType("application/json");
                        response.setCharacterEncoding("UTF-8");
                        response.getWriter().write(json);
                    } else {
                        response.sendError(HttpServletResponse.SC_NOT_FOUND);
                    }
                } catch (NumberFormatException e) {
                    response.sendError(HttpServletResponse.SC_BAD_REQUEST);
                }
            } else {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST);
            }
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Gson gson = new GsonBuilder().setDateFormat("MMM dd, yyyy").create();
        StudentObject student;

        try {
            student = gson.fromJson(request.getReader(), StudentObject.class);
        } catch (JsonSyntaxException e) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            String jsonResponse = "{\"error\": \"Invalid JSON format\"}";
            response.getWriter().write(jsonResponse);
            return;
        }

        // Kiểm tra các trường bắt buộc
        if (student.getStudentCode() == null || student.getStudentName() == null ||
            student.getStudentHomeTown() == null || student.getStudentDob() == null ||
            student.getStudentCCCD() == null || student.getStudentNational() == null ||
            student.getStudentReligion() == null || student.getStudentPhone() == null) {
            
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            String jsonResponse = "{\"error\": \"Missing required fields\"}";
            response.getWriter().write(jsonResponse);
            return;
        }

        // Kiểm tra tính hợp lệ của studentPhone (chỉ chứa các ký tự số)
        if (!student.getStudentPhone().matches("\\d+")) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            String jsonResponse = "{\"error\": \"Invalid phone number format\"}";
            response.getWriter().write(jsonResponse);
            return;
        }

        // Kiểm tra tính hợp lệ của studentCCCD (chỉ chứa các ký tự số)
        if (!student.getStudentCCCD().matches("\\d+")) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            String jsonResponse = "{\"error\": \"Invalid CCCD format\"}";
            response.getWriter().write(jsonResponse);
            return;
        }

        try {
            boolean success = studentFunction.add(student);
            if (success) {
                response.setStatus(HttpServletResponse.SC_CREATED);
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                String jsonResponse = "{\"message\": \"Student created successfully\"}";
                response.getWriter().write(jsonResponse);
            } else {
                response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                String jsonResponse = "{\"error\": \"Student code already exists\"}";
                response.getWriter().write(jsonResponse);
            }
        } catch (Exception e) {
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            String jsonResponse = "{\"error\": \"An internal server error occurred\"}";
            response.getWriter().write(jsonResponse);
        }
    }


    protected void doPut(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Gson gson = new Gson();
        StudentObject student = gson.fromJson(request.getReader(), StudentObject.class);

        boolean success = studentFunction.edit(student);
        if (success) {
            response.setStatus(HttpServletResponse.SC_OK);
        } else {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }

    protected void doDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pathInfo = request.getPathInfo();
        
        if (pathInfo != null && !pathInfo.equals("/")) {
            String[] parts = pathInfo.split("/");
            if (parts.length == 2) {
                try {
                    int studentId = Integer.parseInt(parts[1]);
                    StudentObject student = studentFunction.getStudentObject(studentId);
                    if (student != null) {
                        boolean success = studentFunction.del(student);
                        if (success) {
                            response.setStatus(HttpServletResponse.SC_OK);
                        } else {
                            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                        }
                    } else {
                        response.sendError(HttpServletResponse.SC_NOT_FOUND);
                    }
                } catch (NumberFormatException e) {
                    response.sendError(HttpServletResponse.SC_BAD_REQUEST);
                }
            } else {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST);
            }
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }
    }

    public void destroy() {
        studentFunction.releaseConnection();
    }
}
