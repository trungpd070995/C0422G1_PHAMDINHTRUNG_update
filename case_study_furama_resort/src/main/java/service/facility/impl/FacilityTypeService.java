package service.facility.impl;

import model.facility.FacilityType;
import repository.facility.impl.FacilityTypeRepository;
import service.facility.IFacilityTypeService;

import java.util.List;

public class FacilityTypeService implements IFacilityTypeService {

    private static FacilityTypeRepository facilityTypeRepository = new FacilityTypeRepository();

    @Override
    public List<FacilityType> selectAllFacilityType() {
        return facilityTypeRepository.selectAllFacilityType();
    }
}
