package com.nouhoun.springboot.jwt.integration.repository;

import com.nouhoun.springboot.jwt.integration.domain.TM;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TMRepository extends CrudRepository<TM, Long> {

}
