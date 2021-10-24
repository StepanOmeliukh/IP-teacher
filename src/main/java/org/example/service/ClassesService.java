package org.example.service;

import lombok.Getter;
import lombok.Setter;

public interface ClassesService {
    
    void saveTest();
    String genIPv4(String classification, boolean check);
//    String[] getAllValues();
    String checkAnswers(String[] taskArray);
}
