package com.nouhoun.springboot.jwt.integration.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;

@Setter
@Getter
@NoArgsConstructor
@Entity
public class TM {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long ID;

    private LocalDate TMDATE;

    private String STUDENTID;

    private String TMTYPE;
}
