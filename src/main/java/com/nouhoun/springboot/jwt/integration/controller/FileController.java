package com.nouhoun.springboot.jwt.integration.controller;


import com.nouhoun.springboot.jwt.integration.domaindto.RoleEnum;
//import edu.mum.waa.security.WaaSecured;
import com.nouhoun.springboot.jwt.integration.service.BatchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@RestController
@RequestMapping("/api/v1/file")
@CrossOrigin
public class FileController {

    private final BatchService batchService;

    @Autowired
    public FileController(BatchService batchService) {
        this.batchService = batchService;
    }

    @PostMapping("/upload") //@WaaSecured(RoleEnum.DATA_IMPORT) commented to don´t handle this security
    public String uploadFile(@RequestParam MultipartFile file) throws Exception {
        byte[] bytes = file.getBytes();
        if (file.getOriginalFilename().equals("attendance.csv")) {
            Path path = Paths.get("./attendance.csv");
            Files.write(path, bytes);
            batchService.startBarcode();
        } else {
            Path path = Paths.get("./manual.csv");
            Files.write(path, bytes);
            batchService.startManuel();
        }

        return "ok";
    }


}
