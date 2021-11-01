package org.example.service;

public interface ClassesService {
    
    void saveTest();
    String genIPv4(String classification, boolean check);
    String checkAnswers(String[] taskArray);
    Integer getCount(String clas);
    void saveTest(String result, String regime, String variety, Integer time);
}
