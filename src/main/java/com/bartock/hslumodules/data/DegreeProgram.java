package com.bartock.hslumodules.data;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonManagedReference;

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
@ToString
@Entity
@Table(name = "degreeProgram")
public class DegreeProgram {
    @Id
    @Column(name = "id")
    @NotNull
    @NonNull
    private String id;

    @NotNull
    @NonNull
    private String name;

    @JsonManagedReference
    @OneToMany(mappedBy = "degreeProgram", cascade = CascadeType.ALL)
    private Set<MajorProgram> majors = new HashSet<>();

    public void addMajorProgram(MajorProgram major) {
        majors.add(major);
        if (major.getDegreeProgram() != this) {
            major.setDegreeProgram(this);
        }
    }
}
