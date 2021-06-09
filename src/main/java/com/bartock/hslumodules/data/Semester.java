package com.bartock.hslumodules.data;

import java.time.LocalDate;
import java.time.Year;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@RequiredArgsConstructor
@NoArgsConstructor
@Entity
public class Semester {

    @Id
    @NonNull
    @NotNull
    private String code;

    private LocalDate year;

}
