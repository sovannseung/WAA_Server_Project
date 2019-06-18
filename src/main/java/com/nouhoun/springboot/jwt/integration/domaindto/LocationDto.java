package com.nouhoun.springboot.jwt.integration.domaindto;

import com.nouhoun.springboot.jwt.integration.domain.Location;
import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

@Component
@Getter
@Setter
public class LocationDto extends BaseDto<LocationDto, Location> {


    public LocationDto(){
        super.dtoClass =LocationDto.class;
        super.entityClass= Location.class;
    }

    private long id;

    private String locationName;
    private String locationCode;

}
