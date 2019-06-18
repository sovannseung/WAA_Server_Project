package com.nouhoun.springboot.jwt.integration.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;

@Entity
@Setter
@Getter
@NoArgsConstructor
public class Uploaddata {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long ID;

    private String BARCODE;

    private LocalDate ATTENDANCEDATE;

    private String TYPE;

    private String LOCATION;

    private String BARCODEID;
}
