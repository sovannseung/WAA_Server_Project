package com.nouhoun.springboot.jwt.integration.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
@Setter
@Getter
@NoArgsConstructor
public class Coursedetail {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long COURSEDETAILID;

    private long COURSEID;

    private String STUDENTID;
}
