package repository;

import model.ClassStudent;

import java.util.List;

public interface IClassStudentRepository {

    List<ClassStudent> findAll ();

    void create(ClassStudent classStudent);

}
