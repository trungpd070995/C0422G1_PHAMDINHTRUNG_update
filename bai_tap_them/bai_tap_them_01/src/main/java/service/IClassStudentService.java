package service;

import model.ClassStudent;

import java.util.List;

public interface IClassStudentService {

    List<ClassStudent> findAll ();

    void create(ClassStudent classStudent);
}
