package edu.mum.waa.controller;


import edu.mum.waa.dto.AttendanceByEntryDto;
import edu.mum.waa.dto.AttendanceDatePresentDto;
import edu.mum.waa.dto.ExtraCreditModel;
import edu.mum.waa.security.SecurityHelper;
import edu.mum.waa.security.WaaSecured;
import edu.mum.waa.service.interfaces.AttendanceService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/attendances")
public class AttendanceController {

    private AttendanceService attendanceService;
    private SecurityHelper securityHelper;

    public AttendanceController(AttendanceService attendanceService, SecurityHelper securityHelper) {
        this.attendanceService = attendanceService;
        this.securityHelper = securityHelper;
    }


    @GetMapping("/{blockName}")
    @WaaSecured("VIEW_BLOCK_REPORT")
    public AttendanceDatePresentDto getAttendanceByBlock(@PathVariable String blockName) {


        return attendanceService.getStudentAttendanceByStudentIdAndBlock(blockName, securityHelper.getCurrentUserId());
    }

    @GetMapping("/student")
    @WaaSecured("BLOCK_REPORT_FOR_FACULTY")
    public AttendanceDatePresentDto getAttendanceByBlock(@RequestParam String blockName, @RequestParam Long studentId) {
        return attendanceService.getStudentAttendanceByStudentIdAndBlock(blockName, studentId);
    }

    @GetMapping
    public List<AttendanceByEntryDto> getAttendanceByEntry(@RequestParam String entryName) {

        return attendanceService.getReportByEntry(entryName);
    }


    @GetMapping("/faculty")
    public ExtraCreditModel getExtraCreditsByBlock(@RequestParam String blockName) {

        return attendanceService.getExtraCreditsByBlock(blockName);
    }


}
