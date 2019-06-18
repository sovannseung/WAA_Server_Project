package com.nouhoun.springboot.jwt.integration.domaindto;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class ExtraCreditModel {

    private String selectedBlock;

    private List<StudentDataModel> data;


}
