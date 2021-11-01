package org.example.dao;

import org.example.model.Test;

import java.util.List;

public interface TestDAO {

    void saveTest(Test test);
    List<Test> getTestsByVariety(String clas, Long id);
}
