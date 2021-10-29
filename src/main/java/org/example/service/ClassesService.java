package org.example.service;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

public interface ClassesService {
    
    void saveTest();
    String genIPv4(String classification, boolean check);
    String checkAnswers(String[] taskArray);
    Integer getCount();
    void saveTest(String result, String regime, String variety);
}
