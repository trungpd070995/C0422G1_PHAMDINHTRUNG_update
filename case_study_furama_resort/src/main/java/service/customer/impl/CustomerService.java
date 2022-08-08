package service.customer.impl;

import model.customer.Customer;
import repository.customer.impl.CustomerRepository;
import service.customer.ICustomerService;
import validate.Validate;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class CustomerService implements ICustomerService {

    private static final CustomerRepository customerRepository = new CustomerRepository();

    @Override
    public List<Customer> selectAll() {
        return customerRepository.selectAll();
    }

    @Override
    public List<Customer> selectAllCustomer() {
        return customerRepository.selectAllCustomer();
    }

    @Override
    public Customer selectCustomer(int id) {
        return customerRepository.selectCustomer(id);
    }

//    @Override
//    public void insertCustomer(Customer customer) throws SQLException {
//        customerRepository.insertCustomer(customer);
//    }

//    @Override
//    public boolean updateCustomer(Customer customer) throws SQLException {
//        return customerRepository.updateCustomer(customer);
//    }

    @Override
    public boolean deleteCustomer(int id) throws SQLException {
        return customerRepository.deleteCustomer(id);
    }

    @Override
    public List<Customer> search(String keySearch) {
        return customerRepository.search(keySearch);
    }

    @Override
    public Map<String, String> insertCustomer(Customer customer) throws SQLException {

        Map<String, String> error = new HashMap<>();

        if (customer.getName().equals("")) {
            error.put("name", "*Tên không được để trống");
        } else if (!customer.getName().matches(Validate.NAME)) {
            error.put("name", "*Tên khách hàng không hợp lệ");
        }

        if (customer.getCustomerTypeID() == null) {
            error.put("type", "*Customer type không được để trống");
        }

        if (customer.getIdCard().equals("")) {
            error.put("idCard", "*ID Card không được để trống");
        } else if (!customer.getIdCard().matches(Validate.ID_CARD)) {
            error.put("idCard", "*ID Card không hợp lệ");
        }

        if (customer.getPhone().equals("")) {
            error.put("phone", "*Số điện thoại không được để trống");
        } else if (!customer.getPhone().matches(Validate.NUMBER_PHONE)) {
            error.put("phone", "*Số điện thoại không hợp lệ");
        }

        if (customer.getEmail().equals("")) {
            error.put("email", "*Email không được để trống");
        } else if (!customer.getEmail().matches(Validate.EMAIL)) {
            error.put("email", "*Email không hợp lệ");
        }

        if (customer.getAddress().equals("")) {
            error.put("address", "*Địa chỉ không được để trống");
        }

        if (error.isEmpty()) {
            customerRepository.insertCustomer(customer);
        }

        return error;
    }

    @Override
    public Map<String, String> updateCustomer(Customer customer) throws SQLException {
        Map<String, String> error = new HashMap<>();

        if (customer.getName().equals("")) {
            error.put("name", "*Tên không được để trống");
        } else if (!customer.getName().matches(Validate.NAME)) {
            error.put("name", "*Tên khách hàng không hợp lệ");
        }

        if (customer.getIdCard().equals("")) {
            error.put("idCard", "*ID Card không được để trống");
        } else if (!customer.getIdCard().matches(Validate.ID_CARD)) {
            error.put("idCard", "*ID Card không hợp lệ");
        }

        if (customer.getPhone().equals("")) {
            error.put("phone", "*Số điện thoại không được để trống");
        } else if (!customer.getPhone().matches(Validate.NUMBER_PHONE)) {
            error.put("phone", "*Số điện thoại không hợp lệ");
        }

        if (customer.getEmail().equals("")) {
            error.put("email", "*Email không được để trống");
        } else if (!customer.getEmail().matches(Validate.EMAIL)) {
            error.put("email", "*Email không hợp lệ");
        }

        if (String.valueOf(customer.getAddress()).equals("")) {
            error.put("address", "*Địa chỉ không được để trống");
        }

        if (error.isEmpty()) {
            customerRepository.updateCustomer(customer);
        }
        return error;
    }
}
