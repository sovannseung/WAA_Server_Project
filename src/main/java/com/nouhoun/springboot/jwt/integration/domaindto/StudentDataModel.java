package com.nouhoun.springboot.jwt.integration.domaindto;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class StudentDataModel {

    private String firstName;
    private String lastName;
    private String id;
    private double extraPoint;

}
