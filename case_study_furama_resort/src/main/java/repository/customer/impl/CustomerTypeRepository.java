package repository.customer.impl;
import model.customer.CustomerType;
import repository.BaseRepository;
import repository.customer.ICustomerTypeRepository;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerTypeRepository implements ICustomerTypeRepository {
    private static final String SELECT_ALL_CUSTOMER_TYPE = "select * from customer_type";

    @Override
    public List<CustomerType> selectAllCustomerType() {
        List<CustomerType> customerTypeList = new ArrayList<>();

        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER_TYPE)) {

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = Integer.parseInt(rs.getString("customer_type_id"));
                String name = rs.getString("customer_type_name");

                customerTypeList.add(new CustomerType(id, name));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerTypeList;
    }
}