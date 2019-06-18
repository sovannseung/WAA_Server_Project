package com.nouhoun.springboot.jwt.integration.service;

import com.nouhoun.springboot.jwt.integration.domain.TM;

import java.util.List;

public interface TMService {
    TM findByID(Long ID);
    List<TM> findAllTMs(String TMTYPE);
    TM addTM(TM tm);
    TM updateTM(TM tm);
    TM removeTM(Long ID);
}
