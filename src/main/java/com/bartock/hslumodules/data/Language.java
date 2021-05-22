package com.bartock.hslumodules.data;

import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@RequiredArgsConstructor
@NoArgsConstructor
@Entity
@ToString
public class Language {
    @Id
    @NotNull
    @NonNull
    private String isoCode;

    @NotNull
    @NonNull
    private String name;

    @Override
    public int hashCode() {
        return Objects.hash(isoCode);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Language other = (Language) obj;

        return Objects.equals(isoCode, other.isoCode);
    }

}
