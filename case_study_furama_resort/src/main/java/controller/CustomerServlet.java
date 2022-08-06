package controller;

import model.customer.Customer;
import model.customer.CustomerType;
import service.customer.ICustomerService;
import service.customer.ICustomerTypeService;
import service.customer.impl.CustomerService;
import service.customer.impl.CustomerTypeService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {

    private final ICustomerService iCustomerService = new CustomerService();
    private final ICustomerTypeService iCustomerTypeService = new CustomerTypeService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                insertCustomer(request, response);
                break;
            case "edit":
                updateCustomer(request, response);
                break;
            case "delete":
                deleteCustomer(request, response);
                break;
            default:
                customerList(request, response);
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                showNewForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "deleteAll":
                deleteCustomer(request, response);
                break;
            case "search":
                search(request, response);
                break;
            default:
                customerList(request, response);
                break;
        }
    }

    private void customerList(HttpServletRequest request, HttpServletResponse response) {
        List<CustomerType> customerTypeList = iCustomerTypeService.selectAllCustomerType();
        request.setAttribute("customerTypeList", customerTypeList);

        List<Customer> customerList = iCustomerService.selectAllCustomer();
        request.setAttribute("customerList", customerList);

        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("idDelete"));
        try {
            iCustomerService.deleteCustomer(id);
        } catch (SQLException exception) {
            exception.printStackTrace();
        }

        List<CustomerType> customerTypeList = iCustomerTypeService.selectAllCustomerType();
        request.setAttribute("customerTypeList", customerTypeList);

        List<Customer> customerList = iCustomerService.selectAllCustomer();
        request.setAttribute("customerList", customerList);

        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void updateCustomer(HttpServletRequest request, HttpServletResponse response) {
        
        List<CustomerType> customerTypeList = iCustomerTypeService.selectAllCustomerType();
        request.setAttribute("customerTypeList", customerTypeList);

        int id = Integer.parseInt(request.getParameter("id"));

        int customerTypeID = Integer.parseInt(request.getParameter("customerTypeID"));
        String name = request.getParameter("name");

        String birthDay = request.getParameter("birthDay");
        int gender = Integer.parseInt(request.getParameter("gender"));

        String idCard = request.getParameter("idCard");
        String phone = request.getParameter("phone");

        String email = request.getParameter("email");
        String address = request.getParameter("address");

        Customer customer = new Customer(id, customerTypeID, name, birthDay, gender, idCard, phone, email, address);

        try {
            iCustomerService.updateCustomer(customer);
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        request.setAttribute("customer", customer);

        try {
            request.getRequestDispatcher("view/customer/edit.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void insertCustomer(HttpServletRequest request, HttpServletResponse response) {

        List<Customer> customerList = iCustomerService.selectAll();

        List<CustomerType> customerTypeList = iCustomerTypeService.selectAllCustomerType();
        request.setAttribute("customerTypeList", customerTypeList);

        int max = 0;
        for (Customer customer : customerList) {
            if (customer.getId() > max) {
                max = customer.getId();
            }
        }
        int id = max + 1;

        Integer customerTypeID = null;
        if (!String.valueOf(customerTypeID).equals("")) {
            customerTypeID = Integer.parseInt(request.getParameter("customerTypeID"));
        }

        String name = request.getParameter("name");

        String birthDay = request.getParameter("birthDay");
        int gender = Integer.parseInt(request.getParameter("gender"));

        String idCard = request.getParameter("idCard");
        String phone = request.getParameter("phone");

        String email = request.getParameter("email");
        String address = request.getParameter("address");


        Customer customer = new Customer(id, customerTypeID, name, birthDay, gender, idCard, phone, email, address);
        try {
            iCustomerService.insertCustomer(customer);
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        try {
            request.getRequestDispatcher("view/customer/create.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }


    private void search(HttpServletRequest request, HttpServletResponse response) {
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        List<CustomerType> customerTypeList = iCustomerTypeService.selectAllCustomerType();
        request.setAttribute("customerTypeList", customerTypeList);

        int id = Integer.parseInt(request.getParameter("id"));

        Customer customer = iCustomerService.selectCustomer(id);
        request.setAttribute("customer", customer);

        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/edit.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) {

        List<CustomerType> customerTypeList = iCustomerTypeService.selectAllCustomerType();

        request.setAttribute("customerTypeList", customerTypeList);

        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
