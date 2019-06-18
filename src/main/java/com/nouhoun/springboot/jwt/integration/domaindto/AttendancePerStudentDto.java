package com.nouhoun.springboot.jwt.integration.domaindto;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;


@Component
@Getter
@Setter
public class AttendancePerStudentDto {


    private int daysPresent;
    private int percentageAttended;
    private int availableDays;


}
