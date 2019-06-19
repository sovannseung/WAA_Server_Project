package edu.mum.waa.batch;

import edu.mum.waa.dto.AttendanceDto;
import edu.mum.waa.dto.LocationDto;
import edu.mum.waa.service.interfaces.BlockService;
import edu.mum.waa.service.interfaces.LocationService;
import edu.mum.waa.service.interfaces.StudentService;
import org.springframework.batch.item.ItemProcessor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@Component
public class ManualEntryProcessor implements ItemProcessor<ManualModel, AttendanceDto> {

    @Autowired
    private StudentService studentService;

    @Autowired
    private BlockService blockService;

    @Autowired
    private LocationService locationService;


    @Override
    public AttendanceDto process(ManualModel manualModel) throws Exception {

        //Set Date
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM/dd/yyyy");
        if (manualModel.getDate().length() <8)
            formatter = DateTimeFormatter.ofPattern("MM/dd/yy");

        AttendanceDto attendanceDto = new AttendanceDto();
        attendanceDto.setDateTime(LocalDate.parse(manualModel.getDate(), formatter));


        //Set Student

        attendanceDto.setStudent(studentService.findStudentByStudentId(manualModel.getStudentId().replaceAll("-","").replaceAll("000","") ));

        //Set Block
        attendanceDto.setBlock(blockService.findBlockByStartDateBeforeAndEndDateAfter(attendanceDto.getDateTime()));



        /////DEFAULTS:////////////
        //Set Time
        attendanceDto.setTime("AM");


        //Set Location
        attendanceDto.setLocation(locationService.findByLocationCode("DB"));


        return attendanceDto;
    }
}
