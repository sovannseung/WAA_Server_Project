package com.nouhoun.springboot.jwt.integration.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Setter
@Getter
@NoArgsConstructor
@Entity
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long ID;

    private String STUDENTID;

    private String BARCODE;

    private String NAME;

    private String USERNAME;

    private String PASSWORD;

    private String ROLE;

    private String ENTRYID;

    public String getROLE(){
        return ROLE;
    }

    public String getUSERNAME(){
        return USERNAME;
    }

    public String getPASSWORD(){
        return PASSWORD;
    }

}
