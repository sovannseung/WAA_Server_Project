package com.nouhoun.springboot.jwt.integration.controller;

import com.nouhoun.springboot.jwt.integration.domain.User;
import com.nouhoun.springboot.jwt.integration.domaindto.DtoUserAccount;
import com.nouhoun.springboot.jwt.integration.service.GenericService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.List;

@RestController
@RequestMapping("")
public class LoginController {
    @Autowired
    private GenericService userService;

    @PostMapping(value ="/gettoken")
    public String getToken(@RequestBody DtoUserAccount userAccount) {
        String result="";
        String command = "curl testjwtclientid:XY7kmzoNzl100@localhost:8081/oauth/token -d grant_type=password -d username="+ userAccount.getUsername() + " -d password=" + userAccount.getPassword();
        try {
            String line="";
            Process p = Runtime.getRuntime().exec(command);
            BufferedReader input =
                    new BufferedReader
                            (new InputStreamReader(p.getInputStream()));
            while ((line = input.readLine()) != null) {
                result = line;
            }
            input.close();
        }
        catch (Exception err) {
            err.printStackTrace();
        }
        return result;
    }

    @GetMapping(value = "/springjwt/login")
    @PreAuthorize("hasAuthority('ADMIN') or hasAuthority('FACULTY') or hasAuthority('STUDENT')")
    public User getUser(@RequestBody DtoUserAccount userAccount){
        return userService.findByUsername(userAccount.getUsername());
    }


}
