package repository.facility.impl;

import model.facility.FacilityType;
import repository.BaseRepository;
import repository.facility.IFacilityTypeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FacilityTypeRepository implements IFacilityTypeRepository {

    private static final String SELECT_ALL_FACILITY_TYPE = "select * from facility_type";

    @Override
    public List<FacilityType> selectAllFacilityType() {
        List<FacilityType> facilityTypeList = new ArrayList<>();

        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_FACILITY_TYPE)) {

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = Integer.parseInt(rs.getString("facility_type_id"));
                String name = rs.getString("facility_type_name");

                facilityTypeList.add(new FacilityType(id, name));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facilityTypeList;
    }
}
