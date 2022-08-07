package service.facility.impl;

import model.facility.RentType;
import repository.facility.impl.RentTypeRepository;
import service.facility.IRentTypeService;

import java.util.List;

public class RentTypeService implements IRentTypeService {
    private static RentTypeRepository rentTypeRepository = new RentTypeRepository();

    @Override
    public List<RentType> selectAllRentType() {
        return rentTypeRepository.selectAllRentType();
    }
}
