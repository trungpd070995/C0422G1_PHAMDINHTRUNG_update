package servlet;

import model.Customer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = {"/customer",""})
public class CustomerServlet extends HttpServlet {

    static List<Customer> customerList = new ArrayList<>();

    static {
        customerList.add(new Customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội",
                "https://1.bp.blogspot.com/-WuxmNotEkM0/XowLMlnulDI/AAAAAAAAbcQ/25fdsH1pXascGhlz7bN_A1VYjpcSOLZ4gCLcBGAsYHQ/s1600/Trai-dep-che-mat-chat%2B%25283%2529.jpg"));
        customerList.add(new Customer("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang",
                "https://1.bp.blogspot.com/-WuxmNotEkM0/XowLMlnulDI/AAAAAAAAbcQ/25fdsH1pXascGhlz7bN_A1VYjpcSOLZ4gCLcBGAsYHQ/s1600/Trai-dep-che-mat-chat%2B%25283%2529.jpg"));
        customerList.add(new Customer("Nguyễn Thái Hoà", "1983-08-22", "Nam Định",
                "https://1.bp.blogspot.com/-WuxmNotEkM0/XowLMlnulDI/AAAAAAAAbcQ/25fdsH1pXascGhlz7bN_A1VYjpcSOLZ4gCLcBGAsYHQ/s1600/Trai-dep-che-mat-chat%2B%25283%2529.jpg"));
        customerList.add(new Customer("Trần Đăng Khoa", "1983-08-17", "Hà Tây",
                "https://1.bp.blogspot.com/-WuxmNotEkM0/XowLMlnulDI/AAAAAAAAbcQ/25fdsH1pXascGhlz7bN_A1VYjpcSOLZ4gCLcBGAsYHQ/s1600/Trai-dep-che-mat-chat%2B%25283%2529.jpg"));
        customerList.add(new Customer("Nguyễn Đình Thi", "1983-08-19", "Hà Nội",
                "https://1.bp.blogspot.com/-WuxmNotEkM0/XowLMlnulDI/AAAAAAAAbcQ/25fdsH1pXascGhlz7bN_A1VYjpcSOLZ4gCLcBGAsYHQ/s1600/Trai-dep-che-mat-chat%2B%25283%2529.jpg"));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        request.setAttribute("customer", customerList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
        requestDispatcher.forward(request,response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}
