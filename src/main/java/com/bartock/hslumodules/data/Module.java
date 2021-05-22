package com.bartock.hslumodules.data;

import java.util.Objects;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;

import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.NaturalId;

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
public class Module {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer id;

    @NaturalId
    @NonNull
    private String code;

    @NotNull
    @NonNull
    private String name;

    @NotNull
    private int credits;

    @NotNull
    @NonNull
    @ManyToMany(cascade = { CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
    @JoinTable(name = "module_language", joinColumns = @JoinColumn(name = "module_id"), inverseJoinColumns = @JoinColumn(name = "language_isoCode"))
    private Set<Language> language;

    @ManyToMany(cascade = { CascadeType.DETACH, CascadeType.REFRESH })
    @JoinTable(name = "module_requirement", joinColumns = @JoinColumn(name = "module_id"), inverseJoinColumns = @JoinColumn(name = "requirement_id"))
    private Set<Requirement> requirements;

    @NonNull
    @NotNull
    private ModuleType type;

    private boolean springSemesterModel = false;
    private boolean fallSemesterModel = false;
    private boolean semesterModel = false;
    private boolean intensiveWeekModel = false;

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Module other = (Module) obj;

        return Objects.equals(id, other.getId());
    }

}
