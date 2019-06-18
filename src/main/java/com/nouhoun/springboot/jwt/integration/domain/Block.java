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
public class Block {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long BLOCKID;

    private String BLOCKNAME;

    private LocalDate STARTDATE;

    private LocalDate ENDDATE;

    private boolean ISSATURDAYCOUNT;

    private boolean ISSUNDAYCOUNT;
}
