package com.nouhoun.springboot.jwt.integration.domaindto;


import com.nouhoun.springboot.jwt.integration.domain.Attendance;
import com.nouhoun.springboot.jwt.integration.domain.Block;
import com.nouhoun.springboot.jwt.integration.domain.Student;
import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

import java.time.LocalDate;


@Component
@Getter
@Setter
public class AttendanceDto extends BaseDto<AttendanceDto, Attendance> {

    public AttendanceDto(){
        super.dtoClass =AttendanceDto.class;
        super.entityClass=Attendance.class;
    }

    private long id;

    private Student student;

    private LocalDate dateTime;

    private Block block;

    private LocationDto location;

    private String time;

}
