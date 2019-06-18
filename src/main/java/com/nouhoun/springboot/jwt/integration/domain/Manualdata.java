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
@Getter
@Setter
@NoArgsConstructor
public class Manualdata {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long ID;

    private LocalDate ATTENDANCEDATE;

    private String NAME;

    private String LOCATION;

    private String STUDENTID;
}