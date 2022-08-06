package service.customer.impl;

import model.customer.CustomerType;
import repository.customer.impl.CustomerRepository;
import repository.customer.impl.CustomerTypeRepository;
import service.customer.ICustomerTypeService;

import java.util.List;

public class CustomerTypeService implements ICustomerTypeService {

    private static final CustomerTypeRepository customerTypeRepository = new CustomerTypeRepository();

    @Override
    public List<CustomerType> selectAllCustomerType() {
        return customerTypeRepository.selectAllCustomerType();
    }
}
