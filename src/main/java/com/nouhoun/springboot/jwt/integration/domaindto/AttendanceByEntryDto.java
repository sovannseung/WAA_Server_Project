package com.nouhoun.springboot.jwt.integration.domaindto;


import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

import java.util.HashMap;

@Component
@Getter
@Setter
public class AttendanceByEntryDto {

    private String firstName;

    private String lastName;

    private HashMap<String, AttendancePerStudentDto> attendancePerBlock;


}
