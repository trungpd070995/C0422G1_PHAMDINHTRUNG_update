package repository.impl;

import model.ClassStudent;
import repository.IClassStudentRepository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ClassStudentRepository implements IClassStudentRepository {

    private static Map<Integer, ClassStudent> classMap ;

    static {
        classMap = new HashMap<>();
        classMap.put(1, new ClassStudent(1, "C0222G1", "Java", "2022-03-03"));
        classMap.put(2, new ClassStudent(2, "C0322G1", "PHP", "2022-04-04"));
        classMap.put(3, new ClassStudent(3, "C0422G1", "linux", "2022-05-05"));
    }

    @Override
    public List<ClassStudent> findAll() {
        return new ArrayList<>(classMap.values());
    }

    @Override
    public void create(ClassStudent classStudent) {
        classMap.put(classStudent.getIdClass(), classStudent);
    }
}
