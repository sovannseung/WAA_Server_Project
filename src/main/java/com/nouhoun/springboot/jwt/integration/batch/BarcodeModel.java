package com.nouhoun.springboot.jwt.integration.batch;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
public class BarcodeModel {

    private String barcode;
    private String date;
    private String time;
    private String location;

}
