package com.nouhoun.springboot.jwt.integration.controller;


//import edu.mum.waa.dto.RoleEnum;
//import edu.mum.waa.security.WaaSecured;
//import edu.mum.waa.service.interfaces.BatchService;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@RestController
@RequestMapping("/api/file")
@CrossOrigin
public class FileController {

    //private final BatchService batchService;
/*
    @Autowired
    public FileController(BatchService batchService) {
        this.batchService = batchService;
    }
    */


    @PostMapping("/upload") //   @WaaSecured(RoleEnum.DATA_IMPORT)
    @PreAuthorize("hasAuthority('ADMIN') or hasAuthority('FACULTY') or hasAuthority('STUDENT')")
    public String uploadFile(@RequestParam MultipartFile file) throws Exception {
        System.out.println("step1");

        byte[] bytes = file.getBytes();
        Path path = Paths.get("./manual.csv");
        Files.write(path, bytes);
            //batchService.startManuel();
        return "ok";
    }

    @PostMapping("/upload2") //   @WaaSecured(RoleEnum.DATA_IMPORT)
    @PreAuthorize("hasAuthority('ADMIN') or hasAuthority('FACULTY') or hasAuthority('STUDENT')")
    public String uploadFile2(@RequestParam MultipartFile file) throws Exception {
        System.out.println("step2");

        byte[] bytes = file.getBytes();
            Path path = Paths.get("./attendance.csv");
            Files.write(path, bytes);
            //batchService.startBarcode();
        return "ok";
    }

}
