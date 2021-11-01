package org.example.service.impl;

import org.springframework.stereotype.Service;

@Service
public class UnderClassesServiceImpl {
    private String IPaddr = "";
    private String mask = "";
    private String maskBin = "";
    private int P = 0; //кількість бітів, які виділені для формування класового префікса мережі.
    private int N = 0; //кількість бітів, які виділені для адресації IP-мережі (номер мережі)
    private int S = 0; //кількість бітів S, що виділяються для адресації підмереж
    private int H = 0; // кількість бітів H, що виділяються для адресації вузлів
    private double Ks = 0; //Кількість підмереж
    private double Kh; //Кількість вузлів(IP-адрес вузлів) однієї підмережі
    private double Khr; //Кількість вузлів(IP-адрес вузлів) загалом
    private int Y = 0;
    private String Y2 = "";



}
