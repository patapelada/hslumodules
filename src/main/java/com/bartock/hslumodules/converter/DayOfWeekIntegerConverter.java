package com.bartock.hslumodules.converter;

import java.time.DayOfWeek;

import javax.persistence.AttributeConverter;

public class DayOfWeekIntegerConverter implements AttributeConverter<DayOfWeek, Integer> {

    @Override
    public Integer convertToDatabaseColumn(DayOfWeek dayOfWeek) {
        return dayOfWeek.getValue();
    }

    @Override
    public DayOfWeek convertToEntityAttribute(Integer dayOfWeek) {
        return DayOfWeek.of(dayOfWeek);
    }

}
