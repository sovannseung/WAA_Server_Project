package com.nouhoun.springboot.jwt.integration.controller;

import com.nouhoun.springboot.jwt.integration.domain.Course;
import com.nouhoun.springboot.jwt.integration.domain.RandomCity;
import com.nouhoun.springboot.jwt.integration.domain.Student;
import com.nouhoun.springboot.jwt.integration.domain.User;
import com.nouhoun.springboot.jwt.integration.service.GenericService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

/**
 * Created by nydiarra on 06/05/17.
 */
@RestController
//@RequestMapping({"/springjwt", "/actuator"})
@RequestMapping("/springjwt")
public class ResourceController {
    @Autowired
    private GenericService userService;

    @RequestMapping(value ="/cities")
    @PreAuthorize("hasAuthority('ADMIN_USER') or hasAuthority('STANDARD_USER')")
    public List<RandomCity> getUser(){
        return userService.findAllRandomCities();
    }

    @RequestMapping(value ="/users", method = RequestMethod.GET)
    @PreAuthorize("hasAuthority('ADMIN_USER')")
    public List<User> getUsers(){
        return userService.findAllUsers();
    }

    @RequestMapping(value ="/test", method = RequestMethod.GET)
    public List<User> getTest(){

        return userService.findAllUsers();

//        String result="";
//        try {
//            String line="";
//            Process p = Runtime.getRuntime().exec("node -v");
//            BufferedReader input =
//                    new BufferedReader
//                            (new InputStreamReader(p.getInputStream()));
//            while ((line = input.readLine()) != null) {
//                System.out.println(line);
//                result = line;
//            }
//            input.close();
//        }
//        catch (Exception err) {
//            err.printStackTrace();
//        }
//
//        return result;
    }
}
