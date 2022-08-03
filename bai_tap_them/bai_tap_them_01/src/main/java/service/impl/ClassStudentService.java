package service.impl;

import model.ClassStudent;
import repository.impl.ClassStudentRepository;
import service.IClassStudentService;

import java.util.List;

public class ClassStudentService implements IClassStudentService {

    private static final ClassStudentRepository classStudentRepository = new ClassStudentRepository();

    @Override
    public List<ClassStudent> findAll() {
        return classStudentRepository.findAll();
    }

    @Override
    public void create(ClassStudent classStudent) {
        classStudentRepository.create(classStudent);
    }
}
