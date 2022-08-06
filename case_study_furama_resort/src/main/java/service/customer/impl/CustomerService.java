package service.customer.impl;

import model.customer.Customer;
import repository.customer.impl.CustomerRepository;
import service.customer.ICustomerService;
import java.sql.SQLException;
import java.util.List;


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

    @Override
    public void insertCustomer(Customer customer) throws SQLException {
        customerRepository.insertCustomer(customer);
    }

    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        return customerRepository.updateCustomer(customer);
    }

    @Override
    public boolean deleteCustomer(int id) throws SQLException {
        return customerRepository.deleteCustomer(id);
    }

    @Override
    public List<Customer> search(String keySearch) {
        return customerRepository.search(keySearch);
    }
}
