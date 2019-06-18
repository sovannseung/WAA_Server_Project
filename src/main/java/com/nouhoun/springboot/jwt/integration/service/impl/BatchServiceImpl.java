package com.nouhoun.springboot.jwt.integration.service.impl;

import com.nouhoun.springboot.jwt.integration.service.BatchService;
import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobParameters;
import org.springframework.batch.core.JobParametersBuilder;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class BatchServiceImpl implements BatchService {
    @Autowired
    JobLauncher jobLauncher;

    @Autowired
    @Qualifier("barcodeJob")
    Job barcodeJob;

    @Autowired
    @Qualifier("manuelJob")
    Job manualJob;

    public void startBarcode() throws Exception {
        JobParameters params = new JobParametersBuilder()
                .addString("barcodeJob", String.valueOf(System.currentTimeMillis()))
                .toJobParameters();
        jobLauncher.run(barcodeJob, params);
    }

    public void startManual() throws Exception {
        JobParameters params = new JobParametersBuilder()
                .addString("manualJob", String.valueOf(System.currentTimeMillis()))
                .toJobParameters();
        jobLauncher.run(manualJob, params);
    }
}
