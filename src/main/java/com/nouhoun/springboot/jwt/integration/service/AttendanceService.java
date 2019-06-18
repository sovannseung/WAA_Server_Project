package com.nouhoun.springboot.jwt.integration.service;

import com.nouhoun.springboot.jwt.integration.domaindto.AttendanceByEntryDto;
import com.nouhoun.springboot.jwt.integration.domaindto.AttendanceDatePresentDto;
import com.nouhoun.springboot.jwt.integration.domaindto.AttendanceDto;
import com.nouhoun.springboot.jwt.integration.domaindto.ExtraCreditModel;

import java.util.List;

public interface AttendanceService extends BaseService<AttendanceDto> {

    AttendanceDatePresentDto getStudentAttendanceByStudentIdAndBlock(String blockName, Long idStudent);

    List<AttendanceByEntryDto> getReportByEntry(String entry);

    ExtraCreditModel getExtraCreditsByBlock(String blockName);


}
