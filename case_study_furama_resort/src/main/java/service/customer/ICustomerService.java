package service.customer;

import model.customer.Customer;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;


public interface ICustomerService {
    List<Customer> selectAll();

    List<Customer> selectAllCustomer();

    Customer selectCustomer(int id);

//    void insertCustomer(Customer customer) throws SQLException;

//    boolean updateCustomer(Customer customer) throws SQLException;

    boolean deleteCustomer(int id) throws SQLException;

    List<Customer> search(String keySearch);

    Map<String, String> insertCustomer(Customer customer) throws SQLException;

    Map<String, String> updateCustomer(Customer customer) throws SQLException;
}
