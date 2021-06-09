package com.bartock.hslumodules.data;

import java.time.DayOfWeek;

import javax.persistence.Column;
import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import com.bartock.hslumodules.converter.DayOfWeekIntegerConverter;

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
public class Block {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer id;

    @NonNull
    @NotNull
    @Convert(converter = DayOfWeekIntegerConverter.class)
    private DayOfWeek day;

    @NonNull
    @NotNull
    @Min(value = 0)
    @Max(value = 4)
    private Integer number;

}
