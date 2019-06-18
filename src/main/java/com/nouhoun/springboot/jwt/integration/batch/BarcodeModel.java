package com.nouhoun.springboot.jwt.integration.batch;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BarcodeModel {

    private String barcode;
    private String date;
    private String time;
    private String location;

}
