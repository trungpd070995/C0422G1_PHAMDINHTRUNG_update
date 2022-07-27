import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DiscountCalculatorServlet", value = "/discount")
public class DiscountCalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float listPrice = Float.parseFloat(request.getParameter("numberListPrice"));
        float discountPercent = Float.parseFloat(request.getParameter("numberDiscountRate"));

        double discountAmount = listPrice * discountPercent * 0.01;
        request.setAttribute("listPrice", listPrice);
        request.setAttribute("discountPercent", discountPercent);
        request.setAttribute("discountAmount", discountAmount);
        request.getRequestDispatcher("/result.jsp").forward(request, response);

//        PrintWriter writer = response.getWriter();
//        writer.println("<html>");
//        writer.println("<h3>Discount Amount: " + discountAmount + "</h3>");
//        writer.println("<h3>Discount Price: " + (listPrice - discountAmount) + "</h3>");
//        writer.println("</html>");
    }
}
