package com.nouhoun.springboot.jwt.integration.domaindto;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class DtoUserAccount {
    private String username;
    private String password;
}
