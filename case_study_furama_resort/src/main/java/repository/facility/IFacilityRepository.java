package repository.facility;

import model.facility.Facility;
import model.facility.House;
import model.facility.Room;
import model.facility.Villa;

import java.sql.SQLException;
import java.util.List;

public interface IFacilityRepository {

    List<Facility> selectAll();

    List<Facility> selectAllFacility();

    Facility selectFacility(int id);

    void insertVilla(Villa villa) throws SQLException;

    void insertHouse(House house) throws SQLException;

    void insertRoom(Room room) throws SQLException;

    boolean updateVilla(Villa villa) throws SQLException;

    boolean updateHouse(House house) throws SQLException;

    boolean updateRoom(Room room) throws SQLException;

    boolean deleteFacility(int id) throws SQLException;

    List<Facility> search(String keySearch);

}
