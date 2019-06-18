package com.nouhoun.springboot.jwt.integration.service.impl;

import com.nouhoun.springboot.jwt.integration.domain.TM;
import com.nouhoun.springboot.jwt.integration.repository.TMRepository;
import com.nouhoun.springboot.jwt.integration.service.TMService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class TMServiceImpl implements TMService {
    @Autowired
    TMRepository tmRepository;

    @Override
    public TM findByID(Long ID) {
        return null;
    }

    @Override
    public List<TM> findAllTMs(String TMTYPE) {
        //return (List<TM>) tmRepository.findByTMTYPE(TMTYPE);
        return null;
    }

    @Override
    public TM addTM(TM tm) {
        return null;
    }

    @Override
    public TM updateTM(TM tm) {
        return null;
    }

    @Override
    public TM removeTM(Long ID) {
        return null;
    }
}
