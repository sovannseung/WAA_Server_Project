package com.nouhoun.springboot.jwt.integration.batch;

import com.nouhoun.springboot.jwt.integration.service.AttendanceService;
import org.springframework.batch.item.ItemWriter;
import com.nouhoun.springboot.jwt.integration.domaindto.AttendanceDto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class AttendanceWriter implements ItemWriter<AttendanceDto> {

    @Autowired
    AttendanceService attendanceService;

    @Override
    public void write(List<? extends AttendanceDto> list) throws Exception {
        for (AttendanceDto attendanceDto : list) {
             attendanceService.save(attendanceDto);
        }
    }
}
